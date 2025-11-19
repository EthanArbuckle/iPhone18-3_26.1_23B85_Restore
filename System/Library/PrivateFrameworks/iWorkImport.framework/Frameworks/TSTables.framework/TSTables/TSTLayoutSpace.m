@interface TSTLayoutSpace
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeOfLayoutSpace:(id)a3;
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionColumnGridRange:(id)a3 ofLayoutSpace:(id)a4;
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionGridRange:(id)a3 ofLayoutSpace:(id)a4;
+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionRowGridRange:(id)a3 ofLayoutSpace:(id)a4;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForColumnGridRange:(SEL)a3;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForGridRange:(SEL)a3 strokeWidthOverride:(id)a4;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForRowGridRange:(SEL)a3;
- ($49C15799EE3625B6AB482F2FFBF0D806)p_frameSpecForGridRange:(SEL)a3 frameType:(id)a4 strokeWidthOverride:(int)a5;
- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByCanvasPoint:(CGPoint)a3 tabsViewable:(BOOL)a4;
- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByLayoutPoint:(CGPoint)a3;
- ($85CD2974BE96D4886BB301820D1C36C2)p_gridPointForTablePoint:(CGPoint)a3;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeForLayoutRect:(CGRect)a3;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_bodyGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_extendedBodyGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_footerRowsGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_gridRangeForTableRect:(CGRect)a3;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerColumnsGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerRowsGridRange;
- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_topLeftCornerGridRange;
- (BOOL)containsCellRange:(TSUCellRect)a3;
- (BOOL)containsGridRange:(id)a3;
- (BOOL)intersectsCellRange:(TSUCellRect)a3;
- (BOOL)intersectsColumnGridRange:(id)a3;
- (BOOL)intersectsGridRange:(id)a3;
- (BOOL)intersectsRowGridRange:(id)a3;
- (BOOL)p_drawStrokeForGridColumn:(unsigned int)a3 strokeRect:(id)a4 clearStroke:(BOOL)a5 shadowType:(int)a6 context:(CGContext *)a7;
- (BOOL)p_drawStrokeForGridRow:(unsigned int)a3 strokeRect:(id)a4 clearStroke:(BOOL)a5 shadowType:(int)a6 context:(CGContext *)a7;
- (BOOL)p_getLayoutDirectionLeftToRight;
- (CGAffineTransform)transformFromCanvas;
- (CGAffineTransform)transformFromDevice;
- (CGAffineTransform)transformToCanvas;
- (CGAffineTransform)transformToDevice;
- (CGPoint)canvasPointForLayoutPoint:(CGPoint)a3;
- (CGPoint)layoutPointForCanvasPoint:(CGPoint)a3;
- (CGPoint)p_layoutOffsetForGridPoint:(id)a3;
- (CGPoint)p_layoutOffsetForTablePoint:(CGPoint)a3;
- (CGPoint)p_layoutPointForTablePoint:(CGPoint)a3;
- (CGPoint)p_tablePointForLayoutPoint:(CGPoint)a3;
- (CGPoint)tableOffset;
- (CGRect)alignedContentFrameForGridRange:(id)a3;
- (CGRect)alignedFrame;
- (CGRect)alignedFrameForGridRange:(id)a3;
- (CGRect)alignedOverrideFrameForGridRange:(id)a3 strokeWidthOverride:(double)a4;
- (CGRect)alignedRectForLayoutRect:(CGRect)a3;
- (CGRect)alignedStrokeFrame;
- (CGRect)alignedStrokeFrameForCellRange:(TSUCellRect)a3;
- (CGRect)alignedStrokeFrameForGridRange:(id)a3;
- (CGRect)alignedStrokeFrameForTableNameBorder;
- (CGRect)alignedStrokeLineForColumnGridRange:(id)a3;
- (CGRect)alignedStrokeLineForRowGridRange:(id)a3;
- (CGRect)cachedAlignedFrame;
- (CGRect)cachedAlignedStrokeFrame;
- (CGRect)cachedFrame;
- (CGRect)cachedStrokeFrame;
- (CGRect)canvasFrame;
- (CGRect)canvasFrameForCellRange:(TSUCellRect)a3;
- (CGRect)canvasFrameForGridRange:(id)a3;
- (CGRect)canvasRectForLayoutRect:(CGRect)a3;
- (CGRect)canvasStrokeFrame;
- (CGRect)canvasStrokeFrameForGridRange:(id)a3;
- (CGRect)contentFrameForGridRange:(id)a3;
- (CGRect)contentFrameForRange:(TSUCellRect)a3;
- (CGRect)frame;
- (CGRect)frameForGridRange:(id)a3;
- (CGRect)frameForRange:(TSUCellRect)a3;
- (CGRect)frameForTableNameBorder;
- (CGRect)layoutRectForCanvasRect:(CGRect)a3;
- (CGRect)p_layoutRectForTableRect:(CGRect)a3;
- (CGRect)p_tableRectForGridRange:(id)a3;
- (CGRect)p_tableRectForLayoutRect:(CGRect)a3;
- (CGRect)strokeFrame;
- (CGRect)strokeFrameForGridRange:(id)a3;
- (CGRect)strokeFrameForRange:(TSUCellRect)a3;
- (CGRect)strokeFrameForTableNameBorder;
- (TSTLayout)layout;
- (TSTLayoutEngine)layoutEngine;
- (TSTLayoutSpace)initWithLayoutSpaceBundle:(id)a3 type:(int)a4;
- (TSTLayoutSpaceBundle)bundle;
- (TSUCellRect)cellRange;
- (TSUCellRect)intersectionCellRange:(TSUCellRect)a3;
- (TSUCellRect)nearestRangeForLayoutRect:(CGRect)a3;
- (TSUCellRect)p_rangeForLayoutRect:(CGRect)a3;
- (TSUCellRect)rangeIntersectingLayoutRect:(CGRect)a3;
- (TSUCellRect)visiblePartOfRange:(TSUCellRect)a3;
- (TSUCellRect)visibleRange;
- (double)canvasPositionForGridColumn:(unsigned int)a3;
- (double)canvasPositionForGridRow:(unsigned int)a3;
- (double)headerColumnsWidth;
- (double)headerRowsHeight;
- (double)p_bodyTranslationX;
- (double)p_bodyTranslationY;
- (double)p_layoutCoordinateForGridColumn:(unsigned int)a3;
- (double)p_layoutCoordinateForGridRow:(unsigned int)a3;
- (double)p_rawTableCoordinateForGridColumn:(unsigned int)a3;
- (double)p_tableCoordinateForGridColumn:(unsigned int)a3;
- (double)p_tableCoordinateForGridRow:(unsigned int)a3;
- (double)p_tableCoordinateForX:(double)a3;
- (double)p_tableCoordinateForY:(double)a3;
- (id)alignedMaskStrokeFramePathForTransform:(CGAffineTransform *)a3 cornerRadius:(double)a4;
- (id)alignedStrokeFramePathForGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6 cornerRadius:(double)a7;
- (id)alignedStrokeLinePathForColumnGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6 cornerRadius:(double)a7;
- (id)alignedStrokeLinePathForRowGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6 cornerRadius:(double)a7;
- (id)p_createColumnCoordinatesForGridRange:(id)a3 invalidColumnIndex:(unsigned __int16)a4 previousCoordinates:(id)a5 outCoordinatesChanged:(BOOL *)a6;
- (id)p_createRowCoordinatesForGridRange:(id)a3 invalidRowIndex:(unsigned int)a4 previousCoordinates:(id)a5 validateSingleRow:(BOOL)a6 outCoordinatesChanged:(BOOL *)a7;
- (int)p_cellTypeForGridPoint:(id)a3;
- (int)validate:(id)a3;
- (int)validateCoordinateCache:(id)a3;
- (int)validateTableOffset:(id)a3;
- (unsigned)p_gridColumnForTableCoordinate:(double)a3;
- (unsigned)p_gridRowForTableCoordinate:(double)a3;
- (void)alignStrokeCoordinatesOfBeginPoint:(CGPoint *)a3 endPoint:(CGPoint *)a4 width:(double *)a5;
- (void)dealloc;
- (void)drawSingleStroke:(id)a3 context:(CGContext *)a4 beginPoint:(CGPoint)a5 endPoint:(CGPoint)a6 width:(double)a7 strokeWidthForDrawing:(double)a8 strokeFrame:(CGRect)a9;
- (void)drawStrokesInGridRange:(id)a3 clearStrokes:(BOOL)a4 context:(CGContext *)a5;
- (void)invalidateCoordinates;
- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)a3;
- (void)invalidateCoordinatesAfterRow:(unsigned int)a3;
- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)a3;
- (void)p_alignFrameSpec:(id *)a3;
- (void)p_alignStrokeHeight:(double)a3 deviceWidth:(double *)a4 scaledWidth:(double *)a5;
- (void)p_alignStrokeWidth:(double)a3 deviceWidth:(double *)a4 scaledWidth:(double *)a5;
- (void)setGridRange:(id)a3;
- (void)setTransformFromCanvas:(CGAffineTransform *)a3;
- (void)setTransformFromDevice:(CGAffineTransform *)a3;
- (void)setTransformToCanvas:(CGAffineTransform *)a3;
- (void)setTransformToDevice:(CGAffineTransform *)a3;
- (void)setUserSpaceToDeviceSpaceTransform:(CGAffineTransform *)a3;
- (void)setViewScale:(double)a3;
- (void)validateCachedFrames;
- (void)validateCoordinateDirection;
@end

@implementation TSTLayoutSpace

- (TSTLayout)layout
{
  v5 = objc_msgSend_bundle(self, a2, v2, v3, v4);
  v10 = objc_msgSend_layout(v5, v6, v7, v8, v9);

  return v10;
}

- (TSTLayoutEngine)layoutEngine
{
  v5 = objc_msgSend_bundle(self, a2, v2, v3, v4);
  v10 = objc_msgSend_layout(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_layoutEngine(v10, v11, v12, v13, v14);

  return v15;
}

- (BOOL)p_getLayoutDirectionLeftToRight
{
  v5 = objc_msgSend_layout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_tableInfo(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_tableStyle(v10, v11, v12, v13, v14);

  LOBYTE(v5) = objc_msgSend_intValueForProperty_(v15, v16, 798, v17, v18) != 1;
  return v5;
}

- (TSTLayoutSpace)initWithLayoutSpaceBundle:(id)a3 type:(int)a4
{
  v6 = a3;
  v28.receiver = self;
  v28.super_class = TSTLayoutSpace;
  v7 = [(TSTLayoutSpace *)&v28 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_bundle, v6);
    v9 = MEMORY[0x277CBF2C0];
    v10 = *MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    v12 = *MEMORY[0x277CBF2C0];
    *&v8->_transformToCanvas.a = *MEMORY[0x277CBF2C0];
    *&v8->_transformToCanvas.c = v11;
    v13 = *(v9 + 32);
    *&v8->_transformFromCanvas.c = v11;
    *&v8->_transformFromCanvas.tx = v13;
    *&v8->_transformToCanvas.tx = v13;
    *&v8->_transformFromCanvas.a = v10;
    *&v8->_transformToDevice.a = v10;
    *&v8->_transformToDevice.c = v11;
    v8->_invalidTableOffset = 1;
    v8->_gridRange.topLeft = -1;
    v8->_gridRange.bottomRight = -1;
    v8->_viewScale = 1.0;
    v8->_invalidColumnIndex = 0;
    v8->_layoutSpaceType = a4;
    v8->_invalidRowIndex = 0;
    *&v8->_transformToDevice.tx = v13;
    *&v8->_transformFromDevice.a = v12;
    v14 = *(v9 + 32);
    *&v8->_transformFromDevice.c = v11;
    *&v8->_transformFromDevice.tx = v14;
    *&v8->_headerColumnsRepeat = 0x1000000;
    headerRowColumnCoordinates = v8->_headerRowColumnCoordinates;
    v8->_headerRowColumnCoordinates = 0;

    bodyColumnCoordinates = v8->_bodyColumnCoordinates;
    v8->_bodyColumnCoordinates = 0;

    headerColumnRowCoordinates = v8->_headerColumnRowCoordinates;
    v8->_headerColumnRowCoordinates = 0;

    bodyRowCoordinates = v8->_bodyRowCoordinates;
    v8->_bodyRowCoordinates = 0;

    v19 = *MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 16);
    v8->_cachedFrame.origin = *MEMORY[0x277CBF3A0];
    v8->_cachedFrame.size = v20;
    v8->_cachedAlignedFrame.origin = v19;
    v8->_cachedAlignedFrame.size = v20;
    v8->_cachedStrokeFrame.origin = v19;
    v8->_cachedStrokeFrame.size = v20;
    v8->_cachedAlignedStrokeFrame.origin = v19;
    v8->_cachedAlignedStrokeFrame.size = v20;
    v21 = objc_alloc_init(TSTLayoutSpaceBezierPathCache);
    bezierPathCache = v8->_bezierPathCache;
    v8->_bezierPathCache = v21;

    pthread_rwlock_init(&v8->mLock, 0);
    v8->_layoutDirectionIsLeftToRight = objc_msgSend_p_getLayoutDirectionLeftToRight(v8, v23, v24, v25, v26);
  }

  return v8;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->mLock);
  v3.receiver = self;
  v3.super_class = TSTLayoutSpace;
  [(TSTLayoutSpace *)&v3 dealloc];
}

- (void)invalidateCoordinates
{
  self->_invalidColumnIndex = 0;
  self->_invalidRowIndex = 0;
  self->_invalidatedForEditingCell = 0;
}

- (void)invalidateCoordinatesAfterColumn:(unsigned __int16)a3
{
  invalidColumnIndex = self->_invalidColumnIndex;
  if (invalidColumnIndex >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = self->_invalidColumnIndex;
  }

  if (invalidColumnIndex == 0x7FFF)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  self->_invalidColumnIndex = v5;
  self->_invalidatedForEditingCell = 0;
}

- (void)invalidateCoordinatesAfterRow:(unsigned int)a3
{
  invalidRowIndex = self->_invalidRowIndex;
  if (invalidRowIndex >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = self->_invalidRowIndex;
  }

  if (invalidRowIndex == 0x7FFFFFFF)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  self->_invalidRowIndex = v5;
  self->_invalidatedForEditingCell = 0;
}

- (void)invalidateCoordinatesForEditingCellID:(TSUCellCoord)a3
{
  v5 = a3;
  v7 = objc_msgSend_layout(self, a2, *&a3, v3, v4);
  v12 = objc_msgSend_tableInfo(v7, v8, v9, v10, v11);
  isSingleCellOrMergeRange = objc_msgSend_isSingleCellOrMergeRange_(v12, v13, *&v5, 0x100000001, v14);

  if ((isSingleCellOrMergeRange & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTLayoutSpace invalidateCoordinatesForEditingCellID:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 289, 0, "Invalidating for an editing cell range that is not a single logical cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_layout(self, v16, v17, v18, v19);
  v36 = objc_msgSend_tableInfo(v31, v32, v33, v34, v35);
  v40 = objc_msgSend_mergeRangeAtCellID_(v36, v37, *&v5, v38, v39);
  v42 = v41;
  v43.origin = v40;
  v43.size = v41;

  if (v40 != 0x7FFFFFFF && (v40 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*&v42) && v42.numberOfColumns)
  {
    v5.row = TSUCellRect::lastRow(&v43);
  }

  self->_invalidatedForEditingCell = 1;
  self->_invalidRowIndex = v5.row;
  self->_invalidColumnIndex = self->_gridRange.bottomRight.column;
}

- (int)validate:(id)a3
{
  v8 = a3;
  if (!self->_invalidTableOffset && self->_invalidColumnIndex == 0x7FFF && self->_invalidRowIndex == 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    objc_msgSend_lockForWrite(self, v4, v5, v6, v7);
    self->_layoutDirectionIsLeftToRight = objc_msgSend_p_getLayoutDirectionLeftToRight(self, v10, v11, v12, v13);
    objc_msgSend_validateCachedFrames(self, v14, v15, v16, v17);
    v21 = objc_msgSend_validateCoordinateCache_(self, v18, v8, v19, v20);
    v25 = objc_msgSend_validateTableOffset_(self, v22, v8, v23, v24);
    v30 = objc_msgSend_bezierPathCache(self, v26, v27, v28, v29);
    objc_msgSend_removeAllObjects(v30, v31, v32, v33, v34);

    objc_msgSend_unlock(self, v35, v36, v37, v38);
    v9 = v25 | v21;
  }

  return v9;
}

- (void)validateCoordinateDirection
{
  if (!self->_layoutDirectionIsLeftToRight)
  {
    v6 = objc_msgSend_layout(self, a2, v2, v3, v4);
    sub_2211B410C(v6, 0);
    v8 = v7 + self->_tableOffset.x * -2.0;

    objc_msgSend_setTableWidthForRightToLeft_(self->_bodyColumnCoordinates, v9, v10, v11, v12, v8);
    headerRowColumnCoordinates = self->_headerRowColumnCoordinates;

    objc_msgSend_setTableWidthForRightToLeft_(headerRowColumnCoordinates, v13, v14, v15, v16, v8);
  }
}

- (void)setGridRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (a3.var0.var0 != -1 && a3.var1.var0 != -1 && a3.var0.var0 <= a3.var1.var0 && a3.var0.var1 != 0xFFFFFFFFLL && a3.var1.var1 != 0xFFFFFFFFLL && a3.var0.var1 <= a3.var1.var1 || (topLeft.column != -1 ? (v9 = bottomRight.column == -1) : (v9 = 1), !v9 ? (v10 = topLeft.column > bottomRight.column) : (v10 = 1), (v11 = HIDWORD(*&topLeft), v12 = HIDWORD(*&bottomRight), !v10) ? (v13 = v11 == 0xFFFFFFFF) : (v13 = 1), !v13 ? (v14 = v12 == 0xFFFFFFFF) : (v14 = 1), !v14 ? (v15 = v11 > v12) : (v15 = 1), !v15))
  {
    if (a3.var0.var0 != topLeft.column || (*&topLeft ^ *&a3.var0) >> 32 || a3.var1.var0 != bottomRight.column || (*&bottomRight ^ *&a3.var1) >> 32)
    {
      if (bottomRight.column >= a3.var1.var0)
      {
        LOWORD(bottomRight.column) = a3.var1.var0;
      }

      objc_msgSend_invalidateCoordinatesAfterColumn_(self, a2, LOWORD(bottomRight.column), *&a3.var1, v3);
      row = self->_gridRange.bottomRight.row;
      if (row >= var1.var1)
      {
        objc_msgSend_invalidateCoordinatesAfterRow_(self, v16, var1.var1, v17, v18);
      }

      else
      {
        objc_msgSend_invalidateCoordinatesAfterRow_(self, v16, row, v17, v18);
      }

      self->_gridRange.topLeft = var0;
      self->_gridRange.bottomRight = var1;
    }
  }
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeOfLayoutSpace:(id)a3
{
  v3 = a3;
  v8 = v3;
  if (v3)
  {
    v9 = objc_msgSend_gridRange(v3, v4, v5, v6, v7);
    v11 = v10;
  }

  else
  {
    v9 = -1;
    v11 = -1;
  }

  v12 = v9;
  v13 = v11;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (TSUCellRect)cellRange
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  v4 = HIDWORD(*&topLeft);
  v5 = HIDWORD(*&bottomRight);
  v6 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v5 == 0xFFFFFFFF;
  if (v6 || v4 > v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((*&bottomRight - (*&topLeft & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (LOWORD(bottomRight.column) - LOWORD(topLeft.column) + 1)) + 0x100000000;
  }

  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v6 = topLeft.column == -1;
  v12 = 0x7FFF00000000;
  if (!v6)
  {
    v12 = *&self->_gridRange.topLeft << 32;
  }

  v13 = 0x7FFFFFFFLL;
  if (v4 != 0xFFFFFFFF)
  {
    v13 = v4;
  }

  v14 = (v12 | v13);
  result.size = v11;
  result.origin = v14;
  return result;
}

- (int)validateTableOffset:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_invalidTableOffset)
  {
    if (v4)
    {
      objc_msgSend_tableOffset(v4, v5, v6, v7, v8);
      v10 = 0;
      objc_msgSend_setTableOffset_(self, v11, v12, v13, v14, v15, v16);
    }

    else
    {
      v17 = *MEMORY[0x277CBF348];
      v18 = *(MEMORY[0x277CBF348] + 8);
      topLeft = self->_gridRange.topLeft;
      bottomRight = self->_gridRange.bottomRight;
      v22 = topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column;
      v23 = HIDWORD(*&topLeft);
      v24 = HIDWORD(*&bottomRight);
      if (!v22 && v23 != 0xFFFFFFFF && v24 != 0xFFFFFFFF && v23 <= v24)
      {
        v28 = objc_msgSend_cellRange(self, v5, v6, v7, v8);
        v33 = objc_msgSend_layoutEngine(self, v29, v30, v31, v32);
        v35 = v33;
        if ((v28 & 0xFFFF00000000) != 0x7FFF00000000 && v28 == 0x7FFFFFFF)
        {
          objc_msgSend_strokeHeightOfGridRow_inColumnRange_(v33, v34, 0, 0, 2147483646);
        }

        else
        {
          objc_msgSend_strokeHeightOfGridRow_inColumnRange_(v33, v34, v28, 0, 2147483646);
        }

        v38 = v37;

        v43 = objc_msgSend_layoutEngine(self, v39, v40, v41, v42);
        v45 = v43;
        if (v28 != 0x7FFFFFFF && (v28 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(v43, v44, 0, 0, 2147483646);
        }

        else
        {
          objc_msgSend_strokeWidthOfGridColumn_inRowRange_(v43, v44, WORD2(v28), 0, 2147483646);
        }

        v48 = v47;

        v53 = objc_msgSend_layout(self, v49, v50, v51, v52);
        v54 = sub_2211B44A8(v53);
        v17 = -floor(v17 - v48 * 0.5 + -1.0 + 0.00000011920929);

        v18 = v54 - floor(v18 - v38 * 0.5 + -1.0 + 0.00000011920929);
      }

      objc_msgSend_tableOffset(self, v5, v6, v7, v8);
      if (v60 == v18 && v59 == v17)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }

      objc_msgSend_setTableOffset_(self, v55, v56, v57, v58, v17, v18);
    }

    self->_invalidTableOffset = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerRowsGridRange
{
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfHeaderRows(v6, v7, v8, v9, v10);

  if (v11)
  {
    LODWORD(v16) = self->_gridRange.bottomRight.column;
    v17 = (v11 - 1);
    if (v16 == -1)
    {
      v19 = -1;
    }

    else
    {
      topLeft = self->_gridRange.topLeft;
      v19 = -1;
      if (topLeft.column != -1)
      {
        bottomRight = self->_gridRange.bottomRight;
        if (bottomRight.column != -1)
        {
          v21 = -1;
          if (topLeft.column <= bottomRight.column)
          {
            v22 = HIDWORD(*&topLeft);
            if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
            {
              v23 = HIDWORD(*&bottomRight);
              if (HIDWORD(*&bottomRight) != 0xFFFFFFFF && v22 <= v23)
              {
                v16 = v16 >= bottomRight.column ? bottomRight.column : v16;
                if (v16 >= topLeft.column)
                {
                  if (v17 >= v23)
                  {
                    v24 = HIDWORD(*&bottomRight);
                  }

                  else
                  {
                    v24 = v17;
                  }

                  if (v22 <= v24)
                  {
                    v21 = v16 | (v24 << 32);
                    v19 = self->_gridRange.topLeft;
                  }
                }
              }
            }
          }

LABEL_21:
          if (!objc_msgSend_isMain(self, v12, v13, v14, v15) || (objc_msgSend_headerRowsRepeat(self, v27, v28, v29, v30) & 1) == 0)
          {
            if (objc_msgSend_layoutSpaceType(self, v27, v28, v29, v30) == 6)
            {
              v32 = self->_gridRange.topLeft;
              v25 = self->_gridRange.bottomRight;
              v31 = *&v32 & 0xFFFFFFFF00000000;
              goto LABEL_26;
            }

            v31 = 0xFFFFFFFF00000000;
            v25 = -1;
            v32.column = -1;
            if (v19.column == -1)
            {
              goto LABEL_26;
            }

            if (v21 == -1)
            {
              goto LABEL_26;
            }

            if (v19.column > v21)
            {
              goto LABEL_26;
            }

            v32.column = -1;
            if (HIDWORD(*&v19) == 0xFFFFFFFF || HIDWORD(v21) == 0xFFFFFFFF || HIDWORD(*&v19) > HIDWORD(v21))
            {
              goto LABEL_26;
            }

            v36 = objc_msgSend_layout(self, 0xFFFFFFFFFFFFFFFFLL, v33, v34, v35);
            v41 = sub_2211B4730(v36, v37, v38, v39, v40);

            if (v41)
            {
              v31 = 0;
              v32.column = self->_gridRange.topLeft.column;
              v25 = (self->_gridRange.bottomRight.column | (v17 << 32));
              goto LABEL_26;
            }
          }

          v31 = 0xFFFFFFFF00000000;
          v25 = -1;
          v32.column = -1;
LABEL_26:
          v26 = (v31 | v32.column);
          goto LABEL_35;
        }
      }
    }

    v21 = -1;
    goto LABEL_21;
  }

  v25 = -1;
  v26 = -1;
LABEL_35:
  result.var1 = v25;
  result.var0 = v26;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_footerRowsGridRange
{
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfFooterRows(v6, v7, v8, v9, v10);

  if (!v11)
  {
    goto LABEL_35;
  }

  v16 = objc_msgSend_layout(self, v12, v13, v14, v15);
  v17 = sub_2211B7764(v16);
  v19 = WORD2(v17);
  v20 = v18;
  v21 = v17 << 32;
  if (v17 == 0x7FFFFFFF)
  {
    v21 = 0xFFFFFFFF00000000;
  }

  v22 = (v18 - 0x100000000 + v21) >> 32;

  bottomRight = self->_gridRange.bottomRight;
  v24 = HIDWORD(*&bottomRight);
  v25 = HIDWORD(v20) ? v22 : -1;
  if (v11 + v25 != bottomRight.row)
  {
LABEL_35:
    v29 = -1;
LABEL_36:
    v30 = -1;
    goto LABEL_37;
  }

  if (v19 == 0x7FFF)
  {
    LODWORD(v26) = -1;
  }

  else
  {
    LODWORD(v26) = v19;
  }

  v27 = v20 + v26 - 1;
  topLeft = self->_gridRange.topLeft;
  if (!v20)
  {
    v27 = -1;
  }

  v29 = -1;
  if (topLeft.column == -1 || bottomRight.column == -1)
  {
    goto LABEL_36;
  }

  v30 = -1;
  if (topLeft.column <= bottomRight.column)
  {
    v31 = HIDWORD(*&topLeft);
    if (HIDWORD(*&topLeft) != 0xFFFFFFFF && v24 != 0xFFFFFFFF && v31 <= v24 && v19 != 0x7FFF && v27 != -1 && v26 <= v27)
    {
      v32 = (v25 + 1);
      if (v32 != 0xFFFFFFFF && v32 <= v24)
      {
        v26 = topLeft.column <= v26 ? v26 : topLeft.column;
        v33 = bottomRight.column >= v27 ? v27 : bottomRight.column;
        if (v26 <= v33)
        {
          if (v31 > v32)
          {
            v32 = v31;
          }

          if (v32 <= v24)
          {
            v30 = *&bottomRight & 0xFFFFFFFF00000000 | v33;
            v29 = (v26 | (v32 << 32));
          }
        }
      }
    }
  }

LABEL_37:
  result.var1 = v30;
  result.var0 = v29;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_headerColumnsGridRange
{
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfHeaderColumns(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = (v11 - 1);
    row = self->_gridRange.bottomRight.row;
    if (row == -1)
    {
      v19 = -1;
    }

    else
    {
      topLeft = self->_gridRange.topLeft;
      v19 = -1;
      if (topLeft.column != -1)
      {
        bottomRight = self->_gridRange.bottomRight;
        if (bottomRight.column != -1)
        {
          v21 = -1;
          if (topLeft.column <= bottomRight.column)
          {
            v22 = HIDWORD(*&topLeft);
            if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
            {
              v23 = HIDWORD(*&bottomRight);
              if (HIDWORD(*&bottomRight) != 0xFFFFFFFF && v22 <= v23)
              {
                bottomRight = v16 >= bottomRight.column ? bottomRight.column : v16;
                if (bottomRight.column >= topLeft.column)
                {
                  if (row >= v23)
                  {
                    row = v23;
                  }

                  if (v22 <= row)
                  {
                    v21 = *&bottomRight | (row << 32);
                    v19 = self->_gridRange.topLeft;
                  }
                }
              }
            }
          }

LABEL_20:
          if (!objc_msgSend_isMain(self, v12, v13, v14, v15) || (objc_msgSend_headerColumnsRepeat(self, v26, v27, v28, v29) & 1) == 0)
          {
            if (objc_msgSend_layoutSpaceType(self, v26, v27, v28, v29) == 5)
            {
              v31 = self->_gridRange.topLeft;
              v24 = self->_gridRange.bottomRight;
              v30 = *&v31 & 0xFFFFFFFF00000000;
              v31 = v31.column;
              goto LABEL_25;
            }

            v30 = 0xFFFFFFFF00000000;
            v24 = -1;
            v31 = 0xFFFFFFFFLL;
            if (v19.column == -1)
            {
              goto LABEL_25;
            }

            if (v21 == -1)
            {
              goto LABEL_25;
            }

            if (v19.column > v21)
            {
              goto LABEL_25;
            }

            v31 = 0xFFFFFFFFLL;
            if (HIDWORD(*&v19) == 0xFFFFFFFF || HIDWORD(v21) == 0xFFFFFFFF || HIDWORD(*&v19) > HIDWORD(v21))
            {
              goto LABEL_25;
            }

            v35 = objc_msgSend_layout(self, 0xFFFFFFFFFFFFFFFFLL, v32, v33, v34);
            v40 = sub_2211B7A08(v35, v36, v37, v38, v39);

            if (v40)
            {
              v31 = 0;
              v30 = self->_gridRange.topLeft.row << 32;
              v24 = (v16 | (self->_gridRange.bottomRight.row << 32));
              goto LABEL_25;
            }
          }

          v30 = 0xFFFFFFFF00000000;
          v24 = -1;
          v31 = 0xFFFFFFFFLL;
LABEL_25:
          v25 = (v30 | *&v31);
          goto LABEL_34;
        }
      }
    }

    v21 = -1;
    goto LABEL_20;
  }

  v24 = -1;
  v25 = -1;
LABEL_34:
  result.var1 = v24;
  result.var0 = v25;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_topLeftCornerGridRange
{
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  v11 = objc_msgSend_numberOfHeaderColumns(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_layoutEngine(self, v12, v13, v14, v15);
  v21 = objc_msgSend_numberOfHeaderRows(v16, v17, v18, v19, v20);

  v25 = -1;
  if (!v11)
  {
    goto LABEL_16;
  }

  v26 = -1;
  if (!v21)
  {
    goto LABEL_17;
  }

  v27 = objc_msgSend_p_headerColumnsGridRange(self, 0xFFFFFFFFFFFFFFFFLL, v22, v23, v24);
  v29 = v28;
  v33 = objc_msgSend_p_headerRowsGridRange(self, v28, v30, v31, v32);
  v35 = v34;
  v25 = -1;
  if (v27 == -1 || v29 == -1)
  {
    goto LABEL_16;
  }

  v26 = -1;
  if (v27 > v29)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v27) == 0xFFFFFFFF || v29 >> 32 == 0xFFFFFFFF)
  {
    goto LABEL_16;
  }

  v26 = -1;
  if (HIDWORD(v27) > v29 >> 32 || v33 == -1 || v35 == -1 || v33 > v35)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v33) == 0xFFFFFFFF || (v36 = HIDWORD(v35), v36 == 0xFFFFFFFF))
  {
LABEL_16:
    v26 = -1;
    goto LABEL_17;
  }

  v26 = -1;
  if (HIDWORD(v33) <= v36)
  {
    v26 = 0;
    v25 = (v11 - 1) | ((v21 - 1) << 32);
  }

LABEL_17:
  v37 = v26;
  result.var1 = v25;
  result.var0 = v37;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_bodyGridRange
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  v8 = objc_msgSend_p_headerColumnsGridRange(self, a2, v2, v3, v4);
  if (v8 == -1 || v9 == -1 || v8 > v9 || (HIDWORD(v8) <= v9 >> 32 ? (v13 = HIDWORD(v8) == 0xFFFFFFFF) : (v13 = 1), !v13 ? (v14 = v9 >> 32 == 0xFFFFFFFF) : (v14 = 1), v14))
  {
    column = topLeft.column;
  }

  else
  {
    column = v9 + 1;
  }

  v16 = objc_msgSend_p_headerRowsGridRange(self, v9, v10, v11, v12);
  if (v16 == -1 || v17 == -1 || v16 > v17 || (HIDWORD(v16) <= v17 >> 32 ? (v21 = HIDWORD(v16) == 0xFFFFFFFF) : (v21 = 1), !v21 ? (v22 = v17 >> 32 == 0xFFFFFFFF) : (v22 = 1), v22))
  {
    v23 = HIDWORD(*&topLeft);
  }

  else
  {
    LODWORD(v23) = HIDWORD(v17) + 1;
  }

  v24 = objc_msgSend_p_footerRowsGridRange(self, v17, v18, v19, v20);
  if (v24 != -1 && v25 != -1 && v24 <= v25 && HIDWORD(v24) <= HIDWORD(v25) && HIDWORD(v24) != 0xFFFFFFFF && HIDWORD(v25) != 0xFFFFFFFF)
  {
    bottomRight = v24 & 0xFFFFFFFF00000000 | bottomRight;
  }

  v28 = column | (v23 << 32);
  v29 = bottomRight;
  result.var1 = v29;
  result.var0 = v28;
  return result;
}

- (BOOL)containsGridRange:(id)a3
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    return 0;
  }

  v7 = HIDWORD(*&topLeft);
  v8 = HIDWORD(*&bottomRight);
  v9 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return 0;
  }

  v13 = a3.var1.var1 == 0xFFFFFFFFLL || a3.var0.var1 > a3.var1.var1;
  v14 = a3.var0.var1 == 0xFFFFFFFFLL || v13;
  if (a3.var0.var0 > a3.var1.var0)
  {
    v14 = 1;
  }

  if (a3.var1.var0 == -1)
  {
    v14 = 1;
  }

  if (a3.var0.var0 == -1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v17 = topLeft.column > a3.var0.var0 || v7 > a3.var0.var1;
  v18 = v15 | v17;
  v20 = a3.var1.var0 <= bottomRight.column && a3.var1.var1 <= v8;
  return v20 & ~v18;
}

- (BOOL)containsCellRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v6 = objc_msgSend_cellRange(self, a2, *&a3.origin, *&a3.size, v3);
  v8 = 0;
  if (HIDWORD(v7))
  {
    if (v7)
    {
      v8 = 0;
      if (HIDWORD(*&size))
      {
        if (size.numberOfColumns)
        {
          v9 = v6 & 0xFFFF00000000;
          if (v6 == 0x7FFFFFFFLL && v9 != 0x7FFF00000000)
          {
            goto LABEL_7;
          }

          v16 = v6 == 0x7FFFFFFF && v9 != 0x7FFF00000000;
          if (v6 > origin.row && !v16)
          {
            return 0;
          }

          v17 = v6 + HIDWORD(v7) - 1;
          if (v6 == 0x7FFFFFFF)
          {
            v17 = 0x7FFFFFFF;
          }

          if (v17 < origin.row)
          {
            return 0;
          }

          if (v6 == 0x7FFFFFFFLL || v9 != 0x7FFF00000000)
          {
LABEL_7:
            v10 = HIDWORD(*&origin);
            v11 = WORD2(v6);
            if (WORD2(v6) > origin.column)
            {
              return 0;
            }

            v12 = WORD2(v6) == 0x7FFF || v7 == 0;
            v13 = v7 - 1 + WORD2(v6);
            v14 = v12 ? 0x7FFF : v7 - 1 + WORD2(v6);
            if (v14 < origin.column)
            {
              return 0;
            }
          }

          else
          {
            v13 = v7 + 32766;
            v10 = HIDWORD(*&origin);
            v11 = 0x7FFF;
          }

          if (v11 == 0x7FFF)
          {
            v18 = 0x7FFF;
          }

          else
          {
            v18 = v13;
          }

          v19 = v10;
          v20 = LOWORD(size.numberOfColumns) + v10 - 1;
          if (v19 == 0x7FFF || size.numberOfColumns == 0)
          {
            v20 = 0x7FFF;
          }

          if (v18 < v20)
          {
            return 0;
          }

          v23 = v6 + HIDWORD(v7) - 1;
          if (v6 == 0x7FFFFFFF)
          {
            v23 = 0x7FFFFFFF;
          }

          if (origin.row == 0x7FFFFFFF)
          {
            v24 = 0x7FFFFFFF;
          }

          else
          {
            v24 = origin.row + size.numberOfRows - 1;
          }

          return v23 >= v24;
        }
      }
    }
  }

  return v8;
}

- (BOOL)intersectsCellRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v6 = objc_msgSend_cellRange(self, a2, *&a3.origin, *&a3.size, v3);
  v8 = sub_221119E0C(v6, v7, origin, size);
  if ((v8 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    return 0;
  }

  v10 = 0;
  if (HIDWORD(v9) && v9)
  {
    return v8 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v8) & 0x101FFFF00000000) != 0 || v9 != *(MEMORY[0x277D813C8] + 8);
  }

  return v10;
}

- (BOOL)intersectsGridRange:(id)a3
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    return 0;
  }

  v7 = HIDWORD(*&topLeft);
  v8 = HIDWORD(*&bottomRight);
  v9 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return 0;
  }

  result = 0;
  if (a3.var0.var0 == -1)
  {
    return result;
  }

  if (a3.var1.var0 == -1)
  {
    return result;
  }

  if (a3.var0.var0 > a3.var1.var0)
  {
    return result;
  }

  result = 0;
  if (a3.var0.var1 == 0xFFFFFFFFLL || a3.var1.var1 == 0xFFFFFFFFLL || a3.var0.var1 > a3.var1.var1)
  {
    return result;
  }

  if (topLeft.column <= a3.var0.var0)
  {
    topLeft.column = a3.var0.var0;
  }

  if (bottomRight.column >= a3.var1.var0)
  {
    bottomRight.column = a3.var1.var0;
  }

  if (topLeft.column > bottomRight.column)
  {
    return 0;
  }

  if (v8 >= a3.var1.var1)
  {
    var1 = a3.var1.var1;
  }

  else
  {
    var1 = v8;
  }

  if (v7 <= a3.var0.var1)
  {
    v13 = a3.var0.var1;
  }

  else
  {
    v13 = v7;
  }

  return v13 <= var1;
}

- (TSUCellRect)intersectionCellRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v6 = objc_msgSend_cellRange(self, a2, *&a3.origin, *&a3.size, v3);

  v8 = sub_221119E0C(v6, v7, origin, size);
  result.size = v9;
  result.origin = v8;
  return result;
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionGridRange:(id)a3 ofLayoutSpace:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = a4;
  v11 = v6;
  if (!v6)
  {
    v14 = -1;
LABEL_28:
    v15 = -1;
    goto LABEL_29;
  }

  v12 = objc_msgSend_gridRange(v6, v7, v8, v9, v10);
  v14 = -1;
  if (v12 == -1 || v13 == -1)
  {
    goto LABEL_28;
  }

  v15 = -1;
  if (v12 <= v13)
  {
    v16 = HIDWORD(v12);
    if (HIDWORD(v12) != 0xFFFFFFFF)
    {
      v17 = HIDWORD(v13);
      if (HIDWORD(v13) != 0xFFFFFFFF && v16 <= v17 && var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
      {
        v18 = HIDWORD(*&var0);
        if (HIDWORD(*&var0) != 0xFFFFFFFF)
        {
          v19 = HIDWORD(*&var1);
          if (HIDWORD(*&var1) != 0xFFFFFFFF && v18 <= v19)
          {
            v20 = v12 <= var0.var0 ? var0.var0 : v12;
            v21 = v13 >= var1.var0 ? var1.var0 : v13;
            if (v20 <= v21)
            {
              if (v17 >= v19)
              {
                v17 = HIDWORD(*&var1);
              }

              if (v16 <= v18)
              {
                v16 = HIDWORD(*&var0);
              }

              if (v16 <= v17)
              {
                v15 = v21 | (v17 << 32);
                v14 = v20 | (v16 << 32);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:

  v22 = v14;
  v23 = v15;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

- (BOOL)intersectsRowGridRange:(id)a3
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column == -1 || bottomRight.column == -1 || topLeft.column > bottomRight.column)
  {
    return 0;
  }

  v7 = HIDWORD(*&topLeft);
  v8 = (*&bottomRight + 0x100000000) >> 32;
  v9 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return 0;
  }

  result = 0;
  if (a3.var0.var0 == -1)
  {
    return result;
  }

  if (a3.var1.var0 == -1)
  {
    return result;
  }

  if (a3.var0.var0 > a3.var1.var0)
  {
    return result;
  }

  result = 0;
  if (a3.var0.var1 == 0xFFFFFFFFLL || a3.var1.var1 == 0xFFFFFFFFLL || a3.var0.var1 > a3.var1.var1)
  {
    return result;
  }

  if (topLeft.column <= a3.var0.var0)
  {
    topLeft.column = a3.var0.var0;
  }

  if (bottomRight.column >= a3.var1.var0)
  {
    bottomRight.column = a3.var1.var0;
  }

  if (topLeft.column > bottomRight.column)
  {
    return 0;
  }

  if (v8 >= a3.var1.var1)
  {
    var1 = a3.var1.var1;
  }

  else
  {
    var1 = v8;
  }

  if (v7 <= a3.var0.var1)
  {
    v13 = a3.var0.var1;
  }

  else
  {
    v13 = v7;
  }

  return v13 <= var1;
}

- (BOOL)intersectsColumnGridRange:(id)a3
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  var0 = bottomRight.column + 1;
  if (topLeft.column == -1 || bottomRight.column == -2 || var0 < topLeft.column)
  {
    return 0;
  }

  v8 = HIDWORD(*&topLeft);
  v9 = HIDWORD(*&bottomRight);
  v10 = HIDWORD(*&topLeft) == 0xFFFFFFFF || v9 == 0xFFFFFFFF;
  if (v10 || v8 > v9)
  {
    return 0;
  }

  result = 0;
  if (a3.var0.var0 == -1)
  {
    return result;
  }

  if (a3.var1.var0 == -1)
  {
    return result;
  }

  if (a3.var0.var0 > a3.var1.var0)
  {
    return result;
  }

  result = 0;
  if (a3.var0.var1 == 0xFFFFFFFFLL || a3.var1.var1 == 0xFFFFFFFFLL || a3.var0.var1 > a3.var1.var1)
  {
    return result;
  }

  if (topLeft.column <= a3.var0.var0)
  {
    topLeft.column = a3.var0.var0;
  }

  if (var0 >= a3.var1.var0)
  {
    var0 = a3.var1.var0;
  }

  if (topLeft.column > var0)
  {
    return 0;
  }

  if (v9 >= a3.var1.var1)
  {
    var1 = a3.var1.var1;
  }

  else
  {
    var1 = v9;
  }

  if (v8 <= a3.var0.var1)
  {
    v8 = a3.var0.var1;
  }

  return v8 <= var1;
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionRowGridRange:(id)a3 ofLayoutSpace:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = a4;
  v11 = v6;
  if (!v6)
  {
    v14 = -1;
LABEL_28:
    v15 = -1;
    goto LABEL_29;
  }

  v12 = objc_msgSend_gridRange(v6, v7, v8, v9, v10);
  v14 = -1;
  if (v12 == -1 || v13 == -1)
  {
    goto LABEL_28;
  }

  v15 = -1;
  if (v12 <= v13)
  {
    v16 = HIDWORD(v12);
    if (HIDWORD(v12) != 0xFFFFFFFF)
    {
      v17 = (v13 + 0x100000000) >> 32;
      if (v17 != 0xFFFFFFFF && v16 <= v17 && var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
      {
        v18 = HIDWORD(*&var0);
        if (HIDWORD(*&var0) != 0xFFFFFFFF)
        {
          v19 = HIDWORD(*&var1);
          if (HIDWORD(*&var1) != 0xFFFFFFFF && v18 <= v19)
          {
            v20 = v12 <= var0.var0 ? var0.var0 : v12;
            v21 = v13 >= var1.var0 ? var1.var0 : v13;
            if (v20 <= v21)
            {
              if (v17 >= v19)
              {
                v17 = HIDWORD(*&var1);
              }

              if (v16 <= v18)
              {
                v16 = HIDWORD(*&var0);
              }

              if (v16 <= v17)
              {
                v15 = v21 | (v17 << 32);
                v14 = v20 | (v16 << 32);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:

  v22 = v14;
  v23 = v15;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

+ ($D854FC4CDD8DDEA9B2859E823A7C8A75)intersectionColumnGridRange:(id)a3 ofLayoutSpace:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = a4;
  v11 = v6;
  if (!v6)
  {
    v14 = -1;
LABEL_28:
    v16 = -1;
    goto LABEL_29;
  }

  v12 = objc_msgSend_gridRange(v6, v7, v8, v9, v10);
  v14 = -1;
  if (v12 == -1)
  {
    goto LABEL_28;
  }

  LODWORD(v15) = v13 + 1;
  if (v13 == -2)
  {
    goto LABEL_28;
  }

  v16 = -1;
  if (v15 >= v12)
  {
    v17 = HIDWORD(v12);
    if (HIDWORD(v12) != 0xFFFFFFFF)
    {
      v18 = HIDWORD(v13);
      if (HIDWORD(v13) != 0xFFFFFFFF && v17 <= v18 && var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
      {
        v19 = HIDWORD(*&var0);
        if (HIDWORD(*&var0) != 0xFFFFFFFF)
        {
          v20 = HIDWORD(*&var1);
          if (HIDWORD(*&var1) != 0xFFFFFFFF && v19 <= v20)
          {
            v21 = v12 <= var0.var0 ? var0.var0 : v12;
            v15 = v15 >= var1.var0 ? var1.var0 : v15;
            if (v21 <= v15)
            {
              if (v18 >= v20)
              {
                v18 = HIDWORD(*&var1);
              }

              if (v17 <= v19)
              {
                v17 = HIDWORD(*&var0);
              }

              if (v17 <= v18)
              {
                v16 = v15 | (v18 << 32);
                v14 = v21 | (v17 << 32);
              }
            }
          }
        }
      }
    }
  }

LABEL_29:

  v22 = v14;
  v23 = v16;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRangeForLayoutRect:(CGRect)a3
{
  objc_msgSend_p_tableRectForLayoutRect_(self, a2, v3, v4, v5, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);

  v11 = objc_msgSend_p_gridRangeForTableRect_(self, v7, v8, v9, v10);
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (TSUCellRect)p_rangeForLayoutRect:(CGRect)a3
{
  v6 = objc_msgSend_gridRangeForLayoutRect_(self, a2, v3, v4, v5, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v8 = HIDWORD(v6);
  if (v6 == -1 || v7 == -1 || v6 > v7)
  {
    v13 = v7;
  }

  else
  {
    v9 = HIDWORD(v7);
    v10 = v7 - 1;
    v11 = (v7 & 0xFFFFFFFF00000000 | (v7 - 1)) - 0x100000000;
    if (v8 > HIDWORD(v7))
    {
      v10 = v7;
      v11 = v7;
    }

    if (v9 == 0xFFFFFFFF)
    {
      v12 = v7;
    }

    else
    {
      v12 = v10;
    }

    if (v9 == 0xFFFFFFFF)
    {
      v13 = v7;
    }

    else
    {
      v13 = v11;
    }

    if (v8 == 0xFFFFFFFF)
    {
      v13 = v7;
      v14 = v7;
    }

    else
    {
      v14 = v12;
    }

    LODWORD(v7) = v14;
  }

  if (v6 == -1)
  {
    v17 = 0;
  }

  else
  {
    v15 = HIDWORD(v13);
    v16 = ((v13 - (v6 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v13 - v6 + 1)) + 0x100000000;
    if (v8 > v15)
    {
      v16 = 0;
    }

    if (v15 == 0xFFFFFFFF)
    {
      v16 = 0;
    }

    if (v8 == 0xFFFFFFFF)
    {
      v16 = 0;
    }

    if (v7 < v6)
    {
      v16 = 0;
    }

    if (v7 == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }
  }

  v18 = v6 << 32;
  if (v6 == -1)
  {
    v18 = 0x7FFF00000000;
  }

  if (v8 == 0xFFFFFFFF)
  {
    v8 = 0x7FFFFFFFLL;
  }

  v19 = (v18 | v8);
  result.size = v17;
  result.origin = v19;
  return result;
}

- (TSUCellRect)nearestRangeForLayoutRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = objc_msgSend_p_rangeForLayoutRect_(self, a2, v3, v4, v5);
  v16 = v11;
  if (v15 == 0x7FFFFFFF || (v15 & 0xFFFF00000000) == 0x7FFF00000000 || !(v11 >> 32) || !v11)
  {
    objc_msgSend_frame(self, v11, v12, v13, v14);
    if ((TSUIntersectsRect() & 1) == 0)
    {
      v21 = objc_msgSend_cellRange(self, v17, v18, v19, v20);
      objc_msgSend_frameForRange_(self, v22, v21, v22, v23);
      if (v27 <= 0.0)
      {
        v16 = 0;
        v15 = 0x7FFF7FFFFFFFLL;
      }

      else
      {
        v28 = v24;
        v29 = v25;
        v30 = v26;
        v31 = v27;
        TSUClampPointInRect();
        v81.origin.x = x;
        v81.origin.y = y;
        v81.size.width = width;
        v81.size.height = height;
        CGRectGetMaxX(v81);
        v82.origin.x = x;
        v82.origin.y = y;
        v82.size.width = width;
        v82.size.height = height;
        CGRectGetMaxY(v82);
        v78 = v29;
        v79 = v28;
        v32 = v31;
        rect = v30;
        TSUClampPointInRect();
        TSURectWithPoints();
        v41 = v40;
        v42 = v39;
        v43 = 1.0;
        v76 = v37;
        if (v39 < 1.0)
        {
          v44 = v38;
          v45 = v41;
          MaxY = CGRectGetMaxY(*&v37);
          v83.origin.y = v78;
          v83.origin.x = v79;
          v83.size.width = rect;
          v83.size.height = v32;
          v47 = CGRectGetMaxY(v83);
          v43 = 1.0;
          v38 = v44 + -1.0;
          if (MaxY != v47)
          {
            v38 = v44;
          }

          v42 = 1.0;
        }

        if (v41 >= v43)
        {
          v57 = objc_msgSend_p_rangeForLayoutRect_(self, v33, v34, v35, v36, v76, v38, v41, v42);
        }

        else
        {
          v48 = v76;
          v75 = v38;
          v49 = v41;
          v50 = v42;
          MaxX = CGRectGetMaxX(*(&v38 - 1));
          v84.origin.y = v78;
          v84.origin.x = v79;
          v84.size.width = rect;
          v84.size.height = v32;
          if (MaxX == CGRectGetMaxX(v84))
          {
            v56 = v76 + -1.0;
          }

          else
          {
            v56 = v76;
          }

          v57 = objc_msgSend_p_rangeForLayoutRect_(self, v52, v53, v54, v55, v56, v75, 1.0, v42);
        }

        v15 = v57;
        v16 = v58;
        if (v57 == 0x7FFFFFFF || (v57 & 0xFFFF00000000) == 0x7FFF00000000 || !(v58 >> 32) || !v58)
        {
          v61 = MEMORY[0x277D81150];
          v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTLayoutSpace nearestRangeForLayoutRect:]", v59, v60);
          v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v64, v65);
          v85.origin.x = x;
          v85.origin.y = y;
          v85.size.width = width;
          v85.size.height = height;
          v67 = NSStringFromCGRect(v85);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v68, v62, v66, 669, 0, "Failed to get nearest cell range from space %@ for layout rect %{public}@", self, v67);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72);
        }
      }
    }
  }

  v73 = v15;
  v74 = v16;
  result.size = v74;
  result.origin = v73;
  return result;
}

- (TSUCellRect)rangeIntersectingLayoutRect:(CGRect)a3
{
  objc_msgSend_p_tableRectForLayoutRect_(self, a2, v3, v4, v5, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  objc_msgSend_frame(self, v15, v16, v17, v18);
  objc_msgSend_p_tableRectForLayoutRect_(self, v19, v20, v21, v22);
  v65.origin.x = v23;
  v65.origin.y = v24;
  v65.size.width = v25;
  v65.size.height = v26;
  v61.origin.x = v8;
  v61.origin.y = v10;
  v61.size.width = v12;
  v61.size.height = v14;
  v62 = CGRectIntersection(v61, v65);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  v35 = objc_msgSend_p_gridRangeForTableRect_(self, v31, v32, v33, v34);
  v37 = v36;
  v41 = objc_msgSend_gridRange(self, v36, v38, v39, v40);
  v45 = v42;
  v46 = v42;
  if (v41 != -1 && v42 != -1 && v41 <= v42 && HIDWORD(v41) != 0xFFFFFFFF && HIDWORD(v42) != 0xFFFFFFFF && HIDWORD(v41) <= HIDWORD(v42))
  {
    v46 = v42 + 1;
    v45 = (v42 & 0xFFFFFFFF00000000 | (v42 + 1)) + 0x100000000;
  }

  if (v37 != -1 && v46 > v37)
  {
    objc_msgSend_p_tableCoordinateForGridColumn_(self, v42, v37, v43, v44);
    v48 = v47;
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    if (v48 == CGRectGetMaxX(v63))
    {
      v37 = (v37 + 1) | v37 & 0xFFFFFFFF00000000;
    }
  }

  v49 = HIDWORD(v37);
  if (HIDWORD(v37) != 0xFFFFFFFF && v49 < HIDWORD(v45))
  {
    objc_msgSend_p_tableCoordinateForGridRow_(self, v42, v49, v43, v44);
    v51 = v50;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    if (v51 == CGRectGetMaxY(v64))
    {
      v37 += 0x100000000;
    }
  }

  if (v35 != -1)
  {
    v52 = (v37 & 0xFFFFFFFF00000000 | (v37 - 1)) - 0x100000000;
    if (HIDWORD(v35) > HIDWORD(v37))
    {
      v52 = v37;
    }

    if (HIDWORD(v37) == 0xFFFFFFFF)
    {
      v53 = v37;
    }

    else
    {
      v53 = v52;
    }

    v54 = v35;
    if (HIDWORD(v35) == 0xFFFFFFFF)
    {
      v55 = v37;
    }

    else
    {
      v55 = v53;
    }

    if (v35 > v37)
    {
      v54 = v35;
      v55 = v37;
    }

    if (v37 != -1)
    {
      v35 = v54;
      v37 = v55;
    }
  }

  v56 = 0;
  v57 = HIDWORD(v35);
  if (v35 != -1 && v37 != -1 && v35 <= v37)
  {
    v56 = 0;
    if (v57 != 0xFFFFFFFF && HIDWORD(v37) != 0xFFFFFFFF && v57 <= HIDWORD(v37))
    {
      v56 = (((v37 - (v35 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v37 - v35 + 1)) + 0x100000000);
    }
  }

  v58 = v35 << 32;
  if (v35 == -1)
  {
    v58 = 0x7FFF00000000;
  }

  if (v57 == 0xFFFFFFFF)
  {
    v57 = 0x7FFFFFFFLL;
  }

  v59 = (v58 | v57);
  result.size = v56;
  result.origin = v59;
  return result;
}

- (double)p_layoutCoordinateForGridColumn:(unsigned int)a3
{
  objc_msgSend_p_tableCoordinateForGridColumn_(self, a2, *&a3, v3, v4);

  objc_msgSend_p_layoutPointForTablePoint_(self, v6, v7, v8, v9);
  return result;
}

- (double)p_layoutCoordinateForGridRow:(unsigned int)a3
{
  objc_msgSend_p_tableCoordinateForGridRow_(self, a2, *&a3, v3, v4);
  objc_msgSend_p_layoutPointForTablePoint_(self, v6, v7, v8, v9, 0.0, v10);
  return v11;
}

- (CGRect)frameForGridRange:(id)a3
{
  objc_msgSend_p_tableRectForGridRange_(self, a2, *&a3.var0, *&a3.var1, v3);

  MEMORY[0x2821F9670](self, sel_p_layoutRectForTableRect_, v5, v6, v7);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)contentFrameForGridRange:(id)a3
{
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, a2, *&a3.var0, *&a3.var1, 0, 0);
  v3 = 0.0 * 0.5 + 0.0;
  v4 = v3;
  v5 = 0.0 - 0.0 * 0.5 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)strokeFrameForGridRange:(id)a3
{
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, a2, *&a3.var0, *&a3.var1, 0, 0);
  v3 = 0.0 - 0.0 * 0.5;
  v4 = v3;
  v5 = 0.0 * 0.5 + 0.0 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForRange:(TSUCellRect)a3
{
  if (a3.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.origin.column;
  }

  v5 = *&a3.origin << 32;
  v6 = 0xFFFFFFFF00000000;
  if (a3.origin.row == 0x7FFFFFFF)
  {
    v5 = 0xFFFFFFFF00000000;
  }

  v7 = (a3.size.numberOfColumns + column - 1);
  if (a3.size.numberOfRows)
  {
    v6 = ((v5 + *&a3.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3.size.numberOfColumns)
  {
    v7 = 0xFFFFFFFFLL;
  }

  objc_msgSend_frameForGridRange_(self, a2, v5 | column, v7 | v6, v3);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)contentFrameForRange:(TSUCellRect)a3
{
  if (a3.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.origin.column;
  }

  v5 = *&a3.origin << 32;
  v6 = 0xFFFFFFFF00000000;
  if (a3.origin.row == 0x7FFFFFFF)
  {
    v5 = 0xFFFFFFFF00000000;
  }

  v7 = (a3.size.numberOfColumns + column - 1);
  if (a3.size.numberOfRows)
  {
    v6 = ((v5 + *&a3.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3.size.numberOfColumns)
  {
    v7 = 0xFFFFFFFFLL;
  }

  objc_msgSend_contentFrameForGridRange_(self, a2, v5 | column, v7 | v6, v3);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)strokeFrameForRange:(TSUCellRect)a3
{
  if (a3.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.origin.column;
  }

  v5 = *&a3.origin << 32;
  v6 = 0xFFFFFFFF00000000;
  if (a3.origin.row == 0x7FFFFFFF)
  {
    v5 = 0xFFFFFFFF00000000;
  }

  v7 = (a3.size.numberOfColumns + column - 1);
  if (a3.size.numberOfRows)
  {
    v6 = ((v5 + *&a3.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3.size.numberOfColumns)
  {
    v7 = 0xFFFFFFFFLL;
  }

  objc_msgSend_strokeFrameForGridRange_(self, a2, v5 | column, v7 | v6, v3);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)headerColumnsWidth
{
  v6 = objc_msgSend_p_headerColumnsGridRange(self, a2, v2, v3, v4);
  if (v6 == -1 || v7 == -1 || v6 > v7 || HIDWORD(v6) == 0xFFFFFFFF || v7 >> 32 == 0xFFFFFFFF || HIDWORD(v6) > v7 >> 32)
  {
    return 0.0;
  }

  objc_msgSend_p_rawTableCoordinateForGridColumn_(self, v7, (v7 + 1), v8, v9);
  return result;
}

- (double)headerRowsHeight
{
  v6 = objc_msgSend_p_headerRowsGridRange(self, a2, v2, v3, v4);
  if (v6 == -1 || v7 == -1 || v6 > v7 || HIDWORD(v6) == 0xFFFFFFFF || v7 >> 32 == 0xFFFFFFFF || HIDWORD(v6) > v7 >> 32)
  {
    return 0.0;
  }

  objc_msgSend_p_tableCoordinateForGridRow_(self, v7, (HIDWORD(v7) + 1), v8, v9);
  return result;
}

- (CGRect)frame
{
  p_cachedFrame = &self->_cachedFrame;
  p_y = &self->_cachedFrame.origin.y;
  p_size = &self->_cachedFrame.size;
  p_height = &self->_cachedFrame.size.height;
  if (CGRectIsEmpty(self->_cachedFrame))
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    p_x = MEMORY[0x277CBF3A0];
    v12 = (MEMORY[0x277CBF3A0] + 24);
    p_width = (MEMORY[0x277CBF3A0] + 16);
    v14 = (MEMORY[0x277CBF3A0] + 8);
    v16 = topLeft == -1 || bottomRight == -1 || topLeft > bottomRight;
    if (!v16 && HIDWORD(topLeft) != 0xFFFFFFFF && HIDWORD(bottomRight) != 0xFFFFFFFF && HIDWORD(topLeft) <= HIDWORD(bottomRight))
    {
      objc_msgSend_frameForGridRange_(self, v7, topLeft, bottomRight, v8);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if (objc_msgSend_isMain(self, v25, v26, v27, v28) && objc_msgSend_headerRowsRepeat(self, v29, v30, v31, v32))
      {
        v33 = objc_msgSend_bundle(self, v29, v30, v31, v32);
        v38 = objc_msgSend_repeatHeaderRowsSpace(v33, v34, v35, v36, v37);

        if (v38)
        {
          objc_msgSend_frame(v38, v39, v40, v41, v42);
          v24 = v24 + v20 - v43;
          v20 = v43;
        }
      }

      if (objc_msgSend_isMain(self, v29, v30, v31, v32) && objc_msgSend_headerColumnsRepeat(self, v44, v45, v46, v47))
      {
        v52 = objc_msgSend_bundle(self, v48, v49, v50, v51);
        v57 = objc_msgSend_repeatHeaderColumnsSpace(v52, v53, v54, v55, v56);

        if (v57)
        {
          objc_msgSend_frame(v57, v58, v59, v60, v61);
          v63 = v62;
          v65 = v64;
          IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v66, v67, v68, v69);
          v71 = v18 - v63;
          if (IsLeftToRight)
          {
            v18 = v63;
          }

          else
          {
            v71 = v65;
          }

          v22 = v22 + v71;
        }
      }

      p_cachedFrame->origin.x = v18;
      *p_y = v20;
      p_x = &p_cachedFrame->origin.x;
      p_size->width = v22;
      v14 = p_y;
      p_width = &p_size->width;
      v12 = p_height;
      *p_height = v24;
    }
  }

  else
  {
    p_x = &p_cachedFrame->origin.x;
    v14 = p_y;
    p_width = &p_size->width;
    v12 = p_height;
  }

  v72 = *v12;
  v73 = *p_width;
  v74 = *v14;
  v75 = *p_x;
  result.size.height = v72;
  result.size.width = v73;
  result.origin.y = v74;
  result.origin.x = v75;
  return result;
}

- (CGRect)strokeFrame
{
  objc_msgSend_lockForRead(self, a2, v2, v3, v4);
  if (CGRectIsEmpty(self->_cachedStrokeFrame))
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    v10 = topLeft == -1 || bottomRight == -1;
    v11 = v10 || topLeft > bottomRight;
    v12 = HIDWORD(topLeft);
    v13 = HIDWORD(bottomRight);
    v14 = v11 || v12 == 0xFFFFFFFF;
    v15 = v14 || v13 == 0xFFFFFFFF;
    if (!v15 && v12 <= v13)
    {
      objc_msgSend_strokeFrameForGridRange_(self, v6, topLeft, bottomRight, v9);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      if (objc_msgSend_isMain(self, v25, v26, v27, v28) && objc_msgSend_headerRowsRepeat(self, v29, v30, v31, v32))
      {
        v33 = objc_msgSend_bundle(self, v29, v30, v31, v32);
        v38 = objc_msgSend_repeatHeaderRowsSpace(v33, v34, v35, v36, v37);

        if (v38)
        {
          objc_msgSend_strokeFrame(v38, v39, v40, v41, v42);
          v24 = v24 + v20 - v43;
          v20 = v43;
        }
      }

      if (objc_msgSend_isMain(self, v29, v30, v31, v32) && objc_msgSend_headerColumnsRepeat(self, v6, topLeft, bottomRight, v9))
      {
        v44 = objc_msgSend_bundle(self, v6, topLeft, bottomRight, v9);
        v49 = objc_msgSend_repeatHeaderColumnsSpace(v44, v45, v46, v47, v48);

        if (v49)
        {
          objc_msgSend_strokeFrame(v49, v50, v51, v52, v53);
          v55 = v54;
          v57 = v56;
          IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v58, v59, v60, v61);
          v63 = v18 - v55;
          if (IsLeftToRight)
          {
            v18 = v55;
          }

          else
          {
            v63 = v57;
          }

          v22 = v22 + v63;
        }
      }

      self->_cachedStrokeFrame.origin.x = v18;
      self->_cachedStrokeFrame.origin.y = v20;
      self->_cachedStrokeFrame.size.width = v22;
      self->_cachedStrokeFrame.size.height = v24;
    }
  }

  x = self->_cachedStrokeFrame.origin.x;
  y = self->_cachedStrokeFrame.origin.y;
  width = self->_cachedStrokeFrame.size.width;
  height = self->_cachedStrokeFrame.size.height;
  objc_msgSend_unlock(self, v6, topLeft, bottomRight, v9);
  v68 = x;
  v69 = y;
  v70 = width;
  v71 = height;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (CGRect)frameForTableNameBorder
{
  if ((objc_msgSend_isMain(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTLayoutSpace frameForTableNameBorder]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 889, 0, "this API is intended to run on the main space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = *MEMORY[0x277CBF3A0];
  v22 = *(MEMORY[0x277CBF3A0] + 8);
  v23 = *(MEMORY[0x277CBF3A0] + 16);
  v24 = *(MEMORY[0x277CBF3A0] + 24);
  v25 = objc_msgSend_layout(self, v6, v7, v8, v9);
  v26 = sub_2211B44A8(v25);

  if (v26 > 0.0)
  {
    column = self->_gridRange.bottomRight.column;
    objc_msgSend_p_layoutCoordinateForGridColumn_(self, v27, 0, v28, v29);
    v32 = v31;
    objc_msgSend_p_layoutCoordinateForGridColumn_(self, v33, column + 1, v34, v35);
    v37 = v36;
    objc_msgSend_p_layoutCoordinateForGridRow_(self, v38, 0, v39, v40);
    v42 = v41;
    IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v43, v44, v45, v46);
    if (IsLeftToRight)
    {
      v21 = v32;
    }

    else
    {
      v21 = v37;
    }

    if (IsLeftToRight)
    {
      v48 = v37;
    }

    else
    {
      v48 = v32;
    }

    v22 = v42 - v26;
    v23 = v48 - v21;
    v24 = v26;
  }

  v49 = v21;
  v50 = v22;
  v51 = v23;
  v52 = v24;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (CGRect)strokeFrameForTableNameBorder
{
  if ((objc_msgSend_isMain(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTLayoutSpace strokeFrameForTableNameBorder]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 915, 0, "this API is intended to run on the main space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = *MEMORY[0x277CBF3A0];
  v22 = *(MEMORY[0x277CBF3A0] + 8);
  v23 = *(MEMORY[0x277CBF3A0] + 16);
  v24 = *(MEMORY[0x277CBF3A0] + 24);
  v25 = objc_msgSend_layout(self, v6, v7, v8, v9);
  v26 = sub_2211B44A8(v25);
  if (v26 > 0.0)
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    v29 = sub_2211C031C(v25);
    objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, v30, topLeft, bottomRight, 0, 0);
    v31 = v29 * 0.5;
    v21 = 0.0 - v29 * 0.5;
    v22 = 0.0 - v26 - v31;
    v23 = v31 + 0.0 - v21;
    v24 = 0.0 + 0.0 - v22;
  }

  v32 = v21;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)alignedStrokeFrameForTableNameBorder
{
  if ((objc_msgSend_isMain(self, a2, v2, v3, v4) & 1) == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTLayoutSpace alignedStrokeFrameForTableNameBorder]", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 950, 0, "this API is intended to run on the main space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = *MEMORY[0x277CBF3A0];
  v22 = *(MEMORY[0x277CBF3A0] + 8);
  v23 = *(MEMORY[0x277CBF3A0] + 16);
  v24 = *(MEMORY[0x277CBF3A0] + 24);
  v25 = objc_msgSend_layout(self, v6, v7, v8, v9);
  v26 = sub_2211B44A8(v25);
  if (v26 > 0.0)
  {
    topLeft = self->_gridRange.topLeft;
    bottomRight = self->_gridRange.bottomRight;
    v29 = sub_2211C031C(v25);
    objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, v30, topLeft, bottomRight, 0);
    v31 = v29 * 0.5;
    v21 = 0.0 - v29 * 0.5;
    v22 = 0.0 - v26 - v31;
    v23 = v31 + 0.0 - v21;
    v24 = 0.0 + 0.0 - v22;
  }

  v32 = v21;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)setTransformToCanvas:(CGAffineTransform *)a3
{
  v4 = *&a3->a;
  v5 = *&a3->tx;
  *&self->_transformToCanvas.c = *&a3->c;
  *&self->_transformToCanvas.tx = v5;
  *&self->_transformToCanvas.a = v4;
  v6 = *&a3->c;
  *&v8.a = *&a3->a;
  *&v8.c = v6;
  *&v8.tx = *&a3->tx;
  CGAffineTransformInvert(&v9, &v8);
  v7 = *&v9.c;
  *&self->_transformFromCanvas.a = *&v9.a;
  *&self->_transformFromCanvas.c = v7;
  *&self->_transformFromCanvas.tx = *&v9.tx;
}

- (void)setViewScale:(double)a3
{
  if (self->_viewScale != a3)
  {
    self->_viewScale = a3;
    self->_invalidTableOffset = 1;
  }
}

- (CGPoint)layoutPointForCanvasPoint:(CGPoint)a3
{
  v3 = vaddq_f64(*&self->_transformFromCanvas.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transformFromCanvas.c, a3.y), *&self->_transformFromCanvas.a, a3.x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGPoint)canvasPointForLayoutPoint:(CGPoint)a3
{
  v3 = vaddq_f64(*&self->_transformToCanvas.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transformToCanvas.c, a3.y), *&self->_transformToCanvas.a, a3.x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (CGRect)layoutRectForCanvasRect:(CGRect)a3
{
  v3 = *&self->_transformFromCanvas.c;
  *&v4.a = *&self->_transformFromCanvas.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_transformFromCanvas.tx;
  return CGRectApplyAffineTransform(a3, &v4);
}

- (CGRect)canvasRectForLayoutRect:(CGRect)a3
{
  v3 = *&self->_transformToCanvas.c;
  *&v4.a = *&self->_transformToCanvas.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_transformToCanvas.tx;
  return CGRectApplyAffineTransform(a3, &v4);
}

- (CGRect)canvasFrameForGridRange:(id)a3
{
  objc_msgSend_frameForGridRange_(self, a2, *&a3.var0, *&a3.var1, v3);

  objc_msgSend_canvasRectForLayoutRect_(self, v5, v6, v7, v8);
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)canvasFrameForCellRange:(TSUCellRect)a3
{
  if (a3.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.origin.column;
  }

  v6 = *&a3.origin << 32;
  v7 = 0xFFFFFFFF00000000;
  if (a3.origin.row == 0x7FFFFFFF)
  {
    v6 = 0xFFFFFFFF00000000;
  }

  v8 = (a3.size.numberOfColumns + column - 1);
  if (a3.size.numberOfRows)
  {
    v7 = ((v6 + *&a3.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3.size.numberOfColumns)
  {
    v8 = 0xFFFFFFFFLL;
  }

  objc_msgSend_frameForGridRange_(self, a2, v6 | column, v8 | v7, v3);

  objc_msgSend_canvasRectForLayoutRect_(self, v9, v10, v11, v12);
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)canvasFrame
{
  objc_msgSend_frame(self, a2, v2, v3, v4);

  objc_msgSend_canvasRectForLayoutRect_(self, v6, v7, v8, v9);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)canvasStrokeFrameForGridRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  objc_msgSend_lockForRead(self, a2, *&a3.var0, *&a3.var1, v3);
  objc_msgSend_strokeFrameForGridRange_(self, v7, var0, var1, v8);
  objc_msgSend_canvasRectForLayoutRect_(self, v9, v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  objc_msgSend_unlock(self, v21, v22, v23, v24);
  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)canvasStrokeFrame
{
  objc_msgSend_strokeFrame(self, a2, v2, v3, v4);

  objc_msgSend_canvasRectForLayoutRect_(self, v6, v7, v8, v9);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (double)canvasPositionForGridColumn:(unsigned int)a3
{
  objc_msgSend_p_layoutCoordinateForGridColumn_(self, a2, *&a3, v3, v4);

  objc_msgSend_canvasPointForLayoutPoint_(self, v6, v7, v8, v9);
  return result;
}

- (double)canvasPositionForGridRow:(unsigned int)a3
{
  objc_msgSend_p_layoutCoordinateForGridRow_(self, a2, *&a3, v3, v4);
  objc_msgSend_canvasPointForLayoutPoint_(self, v6, v7, v8, v9, 0.0, v10);
  return v11;
}

- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByCanvasPoint:(CGPoint)a3 tabsViewable:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    v9 = objc_msgSend_layout(self, a2, a4, v4, v5);
    v10 = sub_2211B905C(v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v43.origin.x = v10;
    v43.origin.y = v12;
    v43.size.width = v14;
    v43.size.height = v16;
    v41.x = x;
    v41.y = y;
    if (CGRectContainsPoint(v43, v41))
    {
      objc_msgSend_canvasPointForLayoutPoint_(self, v17, v18, v19, v20, 0.0, -31.0);
      objc_msgSend_layoutPointForCanvasPoint_(self, v21, v22, v23, v24, x, v25);
      goto LABEL_7;
    }

    v29 = objc_msgSend_layout(self, v17, v18, v19, v20);
    v30 = sub_2211B8F9C(v29);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v44.origin.x = v30;
    v44.origin.y = v32;
    v44.size.width = v34;
    v44.size.height = v36;
    v42.x = x;
    v42.y = y;
    if (CGRectContainsPoint(v44, v42))
    {
      objc_msgSend_canvasPointForLayoutPoint_(self, a2, a4, v4, v5, -31.0, 0.0);
      x = v37;
    }
  }

  objc_msgSend_layoutPointForCanvasPoint_(self, a2, a4, v4, v5, x, y);
LABEL_7:

  return MEMORY[0x2821F9670](self, sel_gridPointHitByLayoutPoint_, v26, v27, v28);
}

- ($85CD2974BE96D4886BB301820D1C36C2)gridPointHitByLayoutPoint:(CGPoint)a3
{
  objc_msgSend_p_tablePointForLayoutPoint_(self, a2, v3, v4, v5, a3.x, a3.y);
  v11 = objc_msgSend_p_gridPointForTablePoint_(self, v7, v8, v9, v10);
  v12 = 0xFFFFFFFF00000000;
  if (self->_gridRange.bottomRight.row >= HIDWORD(v11))
  {
    v12 = v11 & 0xFFFFFFFF00000000;
  }

  v13 = 0xFFFFFFFFLL;
  if (self->_gridRange.bottomRight.column >= v11)
  {
    v13 = v11;
  }

  return (v12 | v13);
}

- (TSUCellRect)visibleRange
{
  layoutSpaceType = self->_layoutSpaceType;
  if ((layoutSpaceType - 5) < 2)
  {
    v10 = objc_msgSend_layout(self, a2, v2, v3, v4);
    v11 = sub_2211BA768(v10, self);
    v13 = v12;

    v8 = v11;
    v9 = v13;
  }

  else if (layoutSpaceType == 4 || layoutSpaceType == 1)
  {

    v8 = objc_msgSend_cellRange(self, a2, v2, v3, v4);
  }

  else
  {
    v14 = objc_msgSend_layout(self, a2, v2, v3, v4);
    v15 = sub_2211BA6F0(v14);
    v17 = v16;

    v22 = objc_msgSend_cellRange(self, v18, v19, v20, v21);
    v24 = v23;
    v25 = self->_layoutSpaceType;
    v26 = (v17 + WORD2(v15)) | v17 & 0xFFFFFFFF00000000;
    if (v25 == 2)
    {
      LOWORD(v27) = 0;
    }

    else
    {
      v26 = v17;
      v27 = HIDWORD(v15);
    }

    if (v25 == 3)
    {
      v28 = v17 + (v15 << 32);
    }

    else
    {
      v28 = v26;
    }

    if (v25 == 3)
    {
      v29 = WORD2(v15);
    }

    else
    {
      v29 = v27;
    }

    if (v25 == 3)
    {
      v30 = 0;
    }

    else
    {
      v30 = v15;
    }

    v8 = sub_221119E0C((v29 << 32) | v15 & 0xFFFF000000000000 | v30, v28, v22, v24);
  }

  result.size = v9;
  result.origin = v8;
  return result;
}

- (TSUCellRect)visiblePartOfRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v7 = objc_msgSend_visibleRange(self, a2, *&a3.origin, *&a3.size, v3);

  v8 = sub_221119E0C(origin, size, v7, v6);
  result.size = v9;
  result.origin = v8;
  return result;
}

- (void)setUserSpaceToDeviceSpaceTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->a;
  v5 = *&a3->tx;
  *&self->_transformToDevice.c = *&a3->c;
  *&self->_transformToDevice.tx = v5;
  *&self->_transformToDevice.a = v4;
  v6 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v6;
  *&v10.tx = *&a3->tx;
  CGAffineTransformInvert(&v11, &v10);
  v7 = *&v11.c;
  *&self->_transformFromDevice.a = *&v11.a;
  *&self->_transformFromDevice.c = v7;
  *&self->_transformFromDevice.tx = *&v11.tx;
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  self->_cachedAlignedFrame.origin = *MEMORY[0x277CBF3A0];
  self->_cachedAlignedFrame.size = v9;
  self->_cachedAlignedStrokeFrame.origin = v8;
  self->_cachedAlignedStrokeFrame.size = v9;
}

- (CGRect)alignedRectForLayoutRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_msgSend_drawPreventAntialias(self, a2, v3, v4, v5))
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MinY = CGRectGetMinY(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    MaxX = CGRectGetMaxX(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    MaxY = CGRectGetMaxY(v41);
    a = self->_transformToDevice.a;
    b = self->_transformToDevice.b;
    c = self->_transformToDevice.c;
    d = self->_transformToDevice.d;
    tx = self->_transformToDevice.tx;
    ty = self->_transformToDevice.ty;
    v21 = tx + MinY * c + a * MinX;
    v22 = tx + MaxY * c + a * MaxX;
    v23 = ty + MaxY * d + b * MaxX;
    v24 = floor(v21 + 0.00000011920929);
    v25 = floor(ty + MinY * d + b * MinX + 0.00000011920929);
    v26 = floor(v22 + 0.00000011920929);
    v27 = floor(v23 + 0.00000011920929);
    v28 = self->_transformFromDevice.a;
    v29 = self->_transformFromDevice.b;
    v30 = self->_transformFromDevice.c;
    v31 = self->_transformFromDevice.d;
    v32 = self->_transformFromDevice.tx;
    v33 = self->_transformFromDevice.ty;
    x = v32 + v25 * v30 + v28 * v24;
    y = v33 + v25 * v31 + v29 * v24;
    width = v32 + v27 * v30 + v28 * v26 - x;
    height = v33 + v27 * v31 + v29 * v26 - y;
  }

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)p_alignStrokeWidth:(double)a3 deviceWidth:(double *)a4 scaledWidth:(double *)a5
{
  v5 = 0.0;
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 <= 0.0)
  {
    *a5 = 0.0;
  }

  else
  {
    v6 = a3 * self->_transformToDevice.c + self->_transformToDevice.a * a3;
    v7 = a3 * self->_transformToDevice.d + self->_transformToDevice.b * a3;
    v8 = fabs(v6);
    v9 = floor(v8 + 0.00000011920929);
    if (v8 >= 1.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1.0;
    }

    *a5 = v10;
    v5 = v7 * self->_transformFromDevice.c + self->_transformFromDevice.a * v10;
  }

  *a4 = v5;
}

- (void)p_alignStrokeHeight:(double)a3 deviceWidth:(double *)a4 scaledWidth:(double *)a5
{
  v5 = 0.0;
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 <= 0.0)
  {
    *a5 = 0.0;
  }

  else
  {
    v6 = a3 * self->_transformToDevice.c + self->_transformToDevice.a * a3;
    v7 = fabs(a3 * self->_transformToDevice.d + self->_transformToDevice.b * a3);
    v8 = floor(v7 + 0.00000011920929);
    if (v7 >= 1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
    }

    *a5 = v9;
    v5 = self->_transformFromDevice.d * v9 + self->_transformFromDevice.b * v6;
  }

  *a4 = v5;
}

- (void)alignStrokeCoordinatesOfBeginPoint:(CGPoint *)a3 endPoint:(CGPoint *)a4 width:(double *)a5
{
  if (self->_drawPreventAntialias)
  {
    v52 = 0.0;
    v53 = 0.0;
    x = a3->x;
    y = a3->y;
    v11 = a4->y;
    if (a3->x == a4->x)
    {
      if (y >= v11)
      {
        v12 = *a5;
        v13 = NSStringFromCGPoint(*&x);
        v14 = NSStringFromCGPoint(*a4);
        NSLog(&cfstr_WarningVertica.isa, v12, v13, v14);

        a4->y = a3->y + 1.0;
      }

      objc_msgSend_p_alignStrokeWidth_deviceWidth_scaledWidth_(self, a2, &v52, &v53, a5, *a5);
      v15 = v52;
      *a5 = v52;
      v16 = a3->y;
      b = self->_transformToDevice.b;
      d = self->_transformToDevice.d;
      tx = self->_transformToDevice.tx;
      ty = self->_transformToDevice.ty;
      v21 = ty + a4->y * d + b * a3->x;
      v22 = floor(tx + v16 * self->_transformToDevice.c + self->_transformToDevice.a * a3->x - v53 * 0.5 + 0.00000011920929);
      v23 = floor(ty + v16 * d + b * a3->x + 0.00000011920929);
      v24 = 0.0;
      if (v22 >= 0.0)
      {
        v24 = v22;
      }

      if (a3->x >= 0.0 && tx >= -1.0)
      {
        v22 = v24;
      }

      v26 = self->_transformFromDevice.b;
      v27 = self->_transformFromDevice.d;
      v28 = self->_transformFromDevice.ty;
      v29 = v28 + v23 * v27 + v26 * v22;
      v30 = v28 + floor(v21 + 0.00000011920929) * v27 + v26 * v22;
      v31 = v15 * 0.5 + self->_transformFromDevice.tx + v23 * self->_transformFromDevice.c + self->_transformFromDevice.a * v22;
      v32 = v31;
    }

    else
    {
      if (y != v11)
      {
        return;
      }

      if (x >= a4->x)
      {
        v33 = *a5;
        v34 = NSStringFromCGPoint(*&x);
        v35 = NSStringFromCGPoint(*a4);
        NSLog(&cfstr_WarningHorizon.isa, v33, v34, v35);

        a4->x = a3->x + 1.0;
      }

      objc_msgSend_p_alignStrokeHeight_deviceWidth_scaledWidth_(self, a2, &v52, &v53, a5, *a5);
      v36 = v52;
      *a5 = v52;
      v37 = a3->y;
      a = self->_transformToDevice.a;
      v39 = self->_transformToDevice.tx;
      v40 = self->_transformToDevice.ty;
      v41 = v37 * self->_transformToDevice.c;
      v42 = v39 + v41 + a * a4->x;
      v43 = floor(v39 + v41 + a * a3->x + 0.00000011920929);
      v44 = floor(v40 + v37 * self->_transformToDevice.d + self->_transformToDevice.b * a3->x - v53 * 0.5 + 0.00000011920929);
      v45 = 0.0;
      if (v44 >= 0.0)
      {
        v45 = v44;
      }

      if (v37 < 0.0 || v40 < -1.0)
      {
        v47 = v44;
      }

      else
      {
        v47 = v45;
      }

      v48 = self->_transformFromDevice.a;
      v49 = self->_transformFromDevice.tx;
      v50 = self->_transformFromDevice.c * v47;
      v31 = v49 + v50 + v48 * v43;
      v51 = self->_transformFromDevice.ty + self->_transformFromDevice.d * v47 + self->_transformFromDevice.b * v43;
      v32 = v49 + v50 + v48 * floor(v42 + 0.00000011920929);
      v29 = v36 * 0.5 + v51;
      v30 = v29;
    }

    a3->x = v31;
    a3->y = v29;
    a4->x = v32;
    a4->y = v30;
  }
}

- (CGRect)alignedFrameForGridRange:(id)a3
{
  objc_msgSend_frameForGridRange_(self, a2, *&a3.var0, *&a3.var1, v3);

  objc_msgSend_alignedRectForLayoutRect_(self, v5, v6, v7, v8);
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)alignedContentFrameForGridRange:(id)a3
{
  objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, a2, *&a3.var0, *&a3.var1, 0);
  v3 = 0.0 * 0.5 + 0.0;
  v4 = v3;
  v5 = 0.0 - 0.0 * 0.5 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)alignedStrokeFrameForGridRange:(id)a3
{
  objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, a2, *&a3.var0, *&a3.var1, 0);
  v3 = 0.0 - 0.0 * 0.5;
  v4 = v3;
  v5 = 0.0 * 0.5 + 0.0 - v3;
  v6 = v5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)alignedStrokeFrameForCellRange:(TSUCellRect)a3
{
  if (a3.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.origin.column;
  }

  v5 = *&a3.origin << 32;
  v6 = 0xFFFFFFFF00000000;
  if (a3.origin.row == 0x7FFFFFFF)
  {
    v5 = 0xFFFFFFFF00000000;
  }

  v7 = (a3.size.numberOfColumns + column - 1);
  if (a3.size.numberOfRows)
  {
    v6 = ((v5 + *&a3.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3.size.numberOfColumns)
  {
    v7 = 0xFFFFFFFFLL;
  }

  objc_msgSend_alignedStrokeFrameForGridRange_(self, a2, v5 | column, v7 | v6, v3);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)alignedStrokeLineForRowGridRange:(id)a3
{
  objc_msgSend_p_alignedFrameSpecForRowGridRange_(self, a2, *&a3.var0, *&a3.var1, v3);
  v4 = 0.0 - 0.0 * 0.5;
  v5 = v4;
  v6 = 0.0 * 0.5 + 0.0 - v4;
  v7 = v6;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)alignedStrokeLineForColumnGridRange:(id)a3
{
  objc_msgSend_p_alignedFrameSpecForColumnGridRange_(self, a2, *&a3.var0, *&a3.var1, v3);
  v4 = 0.0 - 0.0 * 0.5;
  v5 = v4;
  v6 = 0.0 * 0.5 + 0.0 - v4;
  v7 = v6;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)alignedStrokeFramePathForGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6 cornerRadius:(double)a7
{
  var1 = a3.var1;
  var0 = a3.var0;
  v12 = a3.var0.var1;
  v13 = a3.var1;
  if (a3.var0.var0 != -1)
  {
    v13 = a3.var1;
    if (a3.var1.var0 != -1)
    {
      v13 = a3.var1;
      if (a3.var0.var0 <= a3.var1.var0)
      {
        v13 = a3.var1;
        if (a3.var0.var1 != 0xFFFFFFFFLL)
        {
          v13 = a3.var1;
          if (a3.var1.var1 != 0xFFFFFFFFLL)
          {
            v13 = a3.var1;
            if (a3.var0.var1 <= a3.var1.var1)
            {
              v13 = (*&a3.var1 & 0xFFFFFFFF00000000 | (a3.var1.var0 + 1)) + 0x100000000;
            }
          }
        }
      }
    }
  }

  v67 = a6;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v18 = v76[3];
  *v18 = var0;
  v18[1] = v13;
  v19 = 1;
  do
  {
    if ((v19 - 1) <= 1)
    {
      if (!((var1 ^ var0) >> 32))
      {
        v19 = 3;
        continue;
      }
    }

    else if (var1 == var0)
    {
      break;
    }

    v69.a = 0.0;
    *&v69.b = &v69;
    *&v69.c = 0x2020000000;
    LODWORD(v69.d) = -1;
    v74[0] = 0;
    v74[1] = v74;
    v74[2] = 0x2020000000;
    v74[3] = 0;
    if ((v19 - 1) > 1)
    {
      v24 = objc_msgSend_layoutEngine(self, v14, v15, v16, v17);
      v22 = v24;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      if (v19 == 3)
      {
        v26 = v12;
      }

      else
      {
        v26 = HIDWORD(v13);
      }

      v70[2] = sub_2211EA9CC;
      v70[3] = &unk_2784612E8;
      v71 = v13;
      v70[4] = &v69;
      v70[5] = v74;
      v70[6] = &v79;
      v70[7] = &v75;
      objc_msgSend_enumerateMergedStrokesForGridRow_from_to_usingBlock_(v24, v25, v26, var0, v13, v70);
    }

    else
    {
      v20 = objc_msgSend_layoutEngine(self, v14, v15, v16, v17);
      v22 = v20;
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      if (v19 == 1)
      {
        v23 = var0;
      }

      else
      {
        v23 = v13;
      }

      v72[2] = sub_2211EA7E0;
      v72[3] = &unk_2784612E8;
      v73 = HIDWORD(v13);
      v72[4] = &v69;
      v72[5] = v74;
      v72[6] = &v79;
      v72[7] = &v75;
      objc_msgSend_enumerateMergedStrokesForGridColumn_from_to_usingBlock_(v20, v21, v23, v12, HIDWORD(v13), v72);
    }

    _Block_object_dispose(v74, 8);
    _Block_object_dispose(&v69, 8);
    ++v19;
  }

  while (v19 < 5);
  if (v80[6] < 1)
  {
    v29 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = (v76[3] + v27);
      v31 = *v30;
      v32 = v30[1];
      v34 = *v30 == -1 || v32 == -1 || v31 > v32;
      v35 = HIDWORD(v31);
      v36 = HIDWORD(v32);
      if (!v34 && v35 != 0xFFFFFFFF && v36 != 0xFFFFFFFF && v35 <= v36)
      {
        v32 = (v32 & 0xFFFFFFFF00000000 | (v32 - 1)) - 0x100000000;
      }

      *v30 = v31;
      v30[1] = v32;
      if (objc_msgSend_intersectsGridRange_(self, v14, *(v76[3] + v27), *(v76[3] + v27 + 8), v17))
      {
        objc_msgSend_alignedStrokeFrameForGridRange_(self, v14, *(v76[3] + v27), *(v76[3] + v27 + 8), v17);
        x = v44;
        y = v46;
        width = v48;
        height = v50;
        if (v67)
        {
          if (!v27)
          {
            objc_msgSend_alignedStrokeFrameForGridRange_(self, v40, var0, var1, v43);
          }

          TSUSubtractPoints();
          x = v52;
          y = v53;
        }

        if (a5 != 0.0)
        {
          v84.origin.x = x;
          v84.origin.y = y;
          v84.size.width = width;
          v84.size.height = height;
          v85 = CGRectInset(v84, a5, a5);
          x = v85.origin.x;
          y = v85.origin.y;
          width = v85.size.width;
          height = v85.size.height;
        }

        if (a4)
        {
          v54 = *&a4->c;
          *&v69.a = *&a4->a;
          *&v69.c = v54;
          *&v69.tx = *&a4->tx;
          v55 = x;
          *&v54 = y;
          v56 = width;
          v57 = height;
          v86 = CGRectApplyAffineTransform(*(&v54 - 8), &v69);
          x = v86.origin.x;
          y = v86.origin.y;
          width = v86.size.width;
          height = v86.size.height;
        }

        if (v29)
        {
          if (a7 == 0.0)
          {
            v61 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v40, v41, v42, v43, x, y, width, height);
            objc_msgSend_uniteWithPolygonalBezierPath_(v29, v58, v61, v59, v60);
          }

          else
          {
            v61 = objc_msgSend_bezierPathWithContinuousCornerRoundedRect_cornerRadius_(MEMORY[0x277D81160], v40, v41, v42, v43, x, y, width, height, a7);
            objc_msgSend_uniteWithBezierPath_(v29, v62, v61, v63, v64);
          }
          v65 = ;

          v29 = v65;
        }

        else
        {
          if (a7 == 0.0)
          {
            objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v40, v41, v42, v43, x, y, width, height);
          }

          else
          {
            objc_msgSend_bezierPathWithContinuousCornerRoundedRect_cornerRadius_(MEMORY[0x277D81160], v40, v41, v42, v43, x, y, width, height, a7);
          }
          v29 = ;
        }
      }

      ++v28;
      v27 += 16;
    }

    while (v28 < v80[6]);
  }

  free(v76[3]);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);

  return v29;
}

- (id)alignedMaskStrokeFramePathForTransform:(CGAffineTransform *)a3 cornerRadius:(double)a4
{
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, a2, a3, v4, v5);
  v14 = objc_msgSend_layoutSpaceType(self, v10, v11, v12, v13);
  v19 = objc_msgSend_visibleRange(self, v15, v16, v17, v18);
  v21 = v19;
  v22 = 0;
  if (v19 != 0x7FFFFFFF && (v19 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v22 = 0;
    if (v20 >> 32)
    {
      if (v20)
      {
        if (WORD2(v19) == 0x7FFF)
        {
          v23 = 0xFFFFFFFFLL;
        }

        else
        {
          v23 = WORD2(v19);
        }

        v24 = (v20 + v23 - 1);
        v25 = (&v20[v19 << 32] & 0xFFFFFFFF00000000) - 0x100000000;
        v69 = objc_msgSend_alignedStrokeFramePathForGridRange_transform_inset_reoriginToZero_cornerRadius_(self, v20, v23 | (v19 << 32), v24 | v25, a3, 0, 0.0, a4);
        switch(v14)
        {
          case 3:
            objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v26, v25 | v23, v24 | v25, v29, 0.0);
            x = v75.origin.x;
            y = v75.origin.y;
            width = v75.size.width;
            height = v75.size.height;
            CGRectGetMaxX(v75);
            v76.origin.x = x;
            v76.origin.y = y;
            v76.size.width = width;
            v76.size.height = height;
            CGRectGetMaxY(v76);
            TSURectWithPoints();
            if (!IsLeftToRight)
            {
              v48 = v48 + -100000.0;
            }

            v52 = v50 + 100000.0;
            break;
          case 2:
            if (IsLeftToRight)
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v26, v24 | (v21 << 32), v24 | v25, v29, 0.0);
              v39 = v73.origin.x;
              v40 = v73.origin.y;
              v41 = v73.size.width;
              v42 = v73.size.height;
              CGRectGetMaxX(v73);
              v43 = &unk_2217E0000;
            }

            else
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v26, v23 | (v21 << 32), v25 | v23, v29, 0.0);
              v39 = v77.origin.x;
              v40 = v77.origin.y;
              v41 = v77.size.width;
              v42 = v77.size.height;
              CGRectGetMinX(v77);
              v43 = &unk_2217E0000;
            }

            v74.origin.x = v39;
            v74.origin.y = v40;
            v74.size.width = v41;
            v74.size.height = v42;
            CGRectGetMaxY(v74);
            TSURectWithPoints();
            v51 = v57 + v43[81];
            break;
          case 1:
            v30 = v69;
            if (IsLeftToRight)
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v26, v24 | v25, v24 | v25, v29, 0.0);
              v31 = v72.origin.x;
              v32 = v72.origin.y;
              v33 = v72.size.width;
              v34 = v72.size.height;
              CGRectGetMaxX(v72);
              v35 = v31;
              v36 = v32;
              v37 = v33;
              v38 = v34;
            }

            else
            {
              objc_msgSend_alignedOverrideFrameForGridRange_strokeWidthOverride_(self, v26, v25 | v23, v25 | v23, v29, 0.0);
              v59 = v78.origin.x;
              v60 = v78.origin.y;
              v61 = v78.size.width;
              v62 = v78.size.height;
              CGRectGetMinX(v78);
              v35 = v59;
              v36 = v60;
              v37 = v61;
              v38 = v62;
            }

            CGRectGetMaxY(*&v35);
            TSURectWithPoints();
            v63 = *&a3->c;
            *&v70.a = *&a3->a;
            *&v70.c = v63;
            *&v70.tx = *&a3->tx;
            *&v53 = CGRectApplyAffineTransform(v79, &v70);
            goto LABEL_25;
          default:
            v53 = *MEMORY[0x277CBF3A0];
            v54 = *(MEMORY[0x277CBF3A0] + 8);
            v55 = *(MEMORY[0x277CBF3A0] + 16);
            v56 = *(MEMORY[0x277CBF3A0] + 24);
LABEL_22:
            v30 = v69;
LABEL_25:
            v67 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v26, v27, v28, v29, v53, v54, v55, v56);
            if (a4 == 0.0)
            {
              objc_msgSend_uniteWithPolygonalBezierPath_(v30, v64, v67, v65, v66);
            }

            else
            {
              objc_msgSend_uniteWithBezierPath_(v30, v64, v67, v65, v66);
            }
            v22 = ;

            goto LABEL_29;
        }

        v58 = *&a3->c;
        *&v70.a = *&a3->a;
        *&v70.c = v58;
        *&v70.tx = *&a3->tx;
        *&v53 = CGRectApplyAffineTransform(*&v48, &v70);
        goto LABEL_22;
      }
    }
  }

LABEL_29:

  return v22;
}

- (id)alignedStrokeLinePathForRowGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6 cornerRadius:(double)a7
{
  v8 = a6;
  var1 = a3.var1;
  var0 = a3.var0;
  v14 = a3.var1.var0 + 1;
  v15 = *&a3.var0 & 0xFFFFFFFF00000000;
  v16 = objc_msgSend_bezierPathCache(self, a2, *&a3.var0, *&a3.var1, a4);
  v18 = objc_msgSend_bezierPathForGridRange_transform_inset_reoriginToZero_(v16, v17, var0, v15 | v14, a4, v8, a5);

  if (v18)
  {
    v23 = v18;
  }

  else
  {
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x4012000000;
    v47[3] = sub_2211EB32C;
    v47[4] = nullsub_26;
    v47[5] = &unk_22188E88F;
    v48 = *MEMORY[0x277CBF348];
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 1;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_2211EB33C;
    v43 = sub_2211EB34C;
    v44 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0xBFF0000000000000;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x4012000000;
    v37[3] = sub_2211EB354;
    v37[4] = nullsub_27;
    v37[5] = &unk_22188E88F;
    v37[6] = var0;
    v37[7] = var1;
    v24 = objc_msgSend_layoutEngine(self, v19, v20, v21, v22);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2211EB364;
    v33[3] = &unk_278461310;
    v34 = var0;
    v35 = v14;
    v33[4] = self;
    v33[5] = v38;
    v36 = v8;
    v33[6] = v37;
    v33[7] = v45;
    *&v33[10] = a5;
    v33[11] = a4;
    v33[8] = v47;
    v33[9] = &v39;
    *&v33[12] = a7;
    objc_msgSend_enumerateMergedStrokesForGridRow_from_to_usingBlock_(v24, v25, HIDWORD(var0), var0, v14, v33);

    v30 = objc_msgSend_bezierPathCache(self, v26, v27, v28, v29);
    objc_msgSend_insertBezierPath_gridRange_transform_inset_reoriginToZero_(v30, v31, v40[5], var0, v15 | v14, a4, v8, a5);

    v23 = v40[5];
    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v39, 8);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
  }

  return v23;
}

- (id)alignedStrokeLinePathForColumnGridRange:(id)a3 transform:(CGAffineTransform *)a4 inset:(double)a5 reoriginToZero:(BOOL)a6 cornerRadius:(double)a7
{
  v8 = a6;
  var1 = a3.var1;
  var0 = a3.var0;
  v14 = a3.var1.var1 + 1;
  v15 = a3.var0.var0 | (v14 << 32);
  v16 = objc_msgSend_bezierPathCache(self, a2, *&a3.var0, *&a3.var1, a4);
  v18 = objc_msgSend_bezierPathForGridRange_transform_inset_reoriginToZero_(v16, v17, var0, v15, a4, v8, a5);

  if (v18)
  {
    v23 = v18;
  }

  else
  {
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x4012000000;
    v47[3] = sub_2211EB32C;
    v47[4] = nullsub_26;
    v47[5] = &unk_22188E88F;
    v48 = *MEMORY[0x277CBF348];
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 1;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_2211EB33C;
    v43 = sub_2211EB34C;
    v44 = 0;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v38[3] = 0xBFF0000000000000;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x4012000000;
    v37[3] = sub_2211EB354;
    v37[4] = nullsub_27;
    v37[5] = &unk_22188E88F;
    v37[6] = var0;
    v37[7] = var1;
    v24 = objc_msgSend_layoutEngine(self, v19, v20, v21, v22);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2211EB9C0;
    v33[3] = &unk_278461310;
    v34 = HIDWORD(var0);
    v35 = v14;
    v33[4] = self;
    v33[5] = v38;
    v36 = v8;
    v33[6] = v37;
    v33[7] = v45;
    *&v33[10] = a5;
    v33[11] = a4;
    v33[8] = v47;
    v33[9] = &v39;
    *&v33[12] = a7;
    objc_msgSend_enumerateMergedStrokesForGridColumn_from_to_usingBlock_(v24, v25, var0, HIDWORD(var0), v14, v33);

    v30 = objc_msgSend_bezierPathCache(self, v26, v27, v28, v29);
    objc_msgSend_insertBezierPath_gridRange_transform_inset_reoriginToZero_(v30, v31, v40[5], var0, v15, a4, v8, a5);

    v23 = v40[5];
    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v39, 8);

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
  }

  return v23;
}

- (CGRect)alignedOverrideFrameForGridRange:(id)a3 strokeWidthOverride:(double)a4
{
  v8 = a4;
  objc_msgSend_p_alignedFrameSpecForGridRange_strokeWidthOverride_(self, a2, *&a3.var0, *&a3.var1, &v8);
  v4 = 0.0 - 0.0 * 0.5;
  v5 = v4;
  v6 = 0.0 * 0.5 + 0.0 - v4;
  v7 = v6;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)alignedFrame
{
  if (CGRectIsEmpty(self->_cachedAlignedFrame))
  {
    objc_msgSend_alignedFrameForGridRange_(self, v3, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight, v4);
    self->_cachedAlignedFrame.origin.x = x;
    self->_cachedAlignedFrame.origin.y = y;
    self->_cachedAlignedFrame.size.width = width;
    self->_cachedAlignedFrame.size.height = height;
  }

  else
  {
    x = self->_cachedAlignedFrame.origin.x;
    y = self->_cachedAlignedFrame.origin.y;
    width = self->_cachedAlignedFrame.size.width;
    height = self->_cachedAlignedFrame.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)alignedStrokeFrame
{
  if (CGRectIsEmpty(self->_cachedAlignedStrokeFrame))
  {
    objc_msgSend_alignedStrokeFrameForGridRange_(self, v3, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight, v4);
    self->_cachedAlignedStrokeFrame.origin.x = x;
    self->_cachedAlignedStrokeFrame.origin.y = y;
    self->_cachedAlignedStrokeFrame.size.width = width;
    self->_cachedAlignedStrokeFrame.size.height = height;
  }

  else
  {
    x = self->_cachedAlignedStrokeFrame.origin.x;
    y = self->_cachedAlignedStrokeFrame.origin.y;
    width = self->_cachedAlignedStrokeFrame.size.width;
    height = self->_cachedAlignedStrokeFrame.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)drawSingleStroke:(id)a3 context:(CGContext *)a4 beginPoint:(CGPoint)a5 endPoint:(CGPoint)a6 width:(double)a7 strokeWidthForDrawing:(double)a8 strokeFrame:(CGRect)a9
{
  x = a6.x;
  v12 = a5.x;
  v79 = a3;
  v18 = objc_msgSend_empty(v79, v14, v15, v16, v17);
  if (a7 <= 0.0)
  {
    v23 = 1;
  }

  else
  {
    v23 = v18;
  }

  if ((v23 & 1) == 0)
  {
    v24 = objc_msgSend_mutableCopy(v79, v19, v20, v21, v22);
    objc_msgSend_setWidth_(v24, v25, v26, v27, v28, a7);
    v33 = objc_msgSend_solid(v79, v29, v30, v31, v32);
    v42 = objc_msgSend_dontClearBackground(v79, v34, v35, v36, v37);
    if (a8 < 1.0)
    {
      v43 = objc_msgSend_color(v79, v38, v39, v40, v41);
      objc_msgSend_alphaComponent(v43, v44, v45, v46, v47);
      v49 = v48;

      v58 = objc_msgSend_color(v79, v50, v51, v52, v53);
      if (v49 >= 1.0)
      {
        objc_msgSend_whiteColor(MEMORY[0x277D81180], v54, v55, v56, v57);
      }

      else
      {
        objc_msgSend_clearColor(MEMORY[0x277D81180], v54, v55, v56, v57);
      }
      v59 = ;
      v63 = objc_msgSend_newBlendedColorWithFraction_ofColor_(v58, v60, v59, v61, v62, 1.0 - a8);

      objc_msgSend_setColor_(v24, v64, v63, v65, v66);
    }

    v67 = v33 ^ 1 | v42;
    if (v67)
    {
      CGContextSaveGState(a4);
      if ((v33 & 1) == 0)
      {
        objc_msgSend_isRoundDash(v79, v68, v69, v70, v71);
        v72 = a9.origin.x;
        y = a9.origin.y;
        width = a9.size.width;
        height = a9.size.height;
        if (v12 == x)
        {
          CGRectGetMinY(*&v72);
        }

        else
        {
          CGRectGetMinX(*&v72);
        }

        CGContextClipToRectSafe();
      }

      if (v42)
      {
        CGContextSetBlendMode(a4, kCGBlendModeNormal);
      }
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    objc_msgSend_paintPath_inContext_(v24, v77, Mutable, a4, v78);
    CGPathRelease(Mutable);
    if (v67)
    {
      CGContextRestoreGState(a4);
    }
  }
}

- (BOOL)p_drawStrokeForGridColumn:(unsigned int)a3 strokeRect:(id)a4 clearStroke:(BOOL)a5 shadowType:(int)a6 context:(CGContext *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = *&a3;
  v14 = objc_msgSend_layoutEngine(self, a2, *&a3, *&a4.var0, *&a4.var1);
  v19 = sub_2213AAEDC(v14, v12);
  if ((v19 & 1) == 0)
  {
    if (objc_msgSend_drawPreventAntialias(self, v15, v16, v17, v18))
    {
      objc_msgSend_alignedStrokeFrame(self, v20, v21, v22, v23);
    }

    else
    {
      objc_msgSend_strokeFrame(self, v20, v21, v22, v23);
    }

    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;
    objc_msgSend_p_layoutCoordinateForGridColumn_(self, v24, v12, v25, v26);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2211EC290;
    v38[3] = &unk_278461338;
    v46 = var0;
    v47 = var1;
    v40 = v35;
    v38[4] = self;
    v48 = a6;
    v49 = v12;
    v39 = v14;
    v41 = a7;
    v50 = a5;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v45 = v34;
    objc_msgSend_enumerateMergedStrokesAndCapsForGridColumn_from_to_usingBlock_(v39, v36, v12, HIDWORD(*&var0), HIDWORD(*&var1), v38);
  }

  return v19 ^ 1;
}

- (BOOL)p_drawStrokeForGridRow:(unsigned int)a3 strokeRect:(id)a4 clearStroke:(BOOL)a5 shadowType:(int)a6 context:(CGContext *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v12 = *&a3;
  v14 = objc_msgSend_layoutEngine(self, a2, *&a3, *&a4.var0, *&a4.var1);
  v19 = sub_2213AAE20(v14, v12);
  if ((v19 & 1) == 0)
  {
    if (objc_msgSend_drawPreventAntialias(self, v15, v16, v17, v18))
    {
      objc_msgSend_alignedStrokeFrame(self, v20, v21, v22, v23);
    }

    else
    {
      objc_msgSend_strokeFrame(self, v20, v21, v22, v23);
    }

    v31 = v27;
    v32 = v28;
    v33 = v29;
    v34 = v30;
    objc_msgSend_p_layoutCoordinateForGridRow_(self, v24, v12, v25, v26);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2211EC9B4;
    v38[3] = &unk_278461338;
    v46 = var0;
    v47 = var1;
    v38[4] = self;
    v40 = v35;
    v48 = a6;
    v49 = v12;
    v39 = v14;
    v41 = a7;
    v50 = a5;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v45 = v34;
    objc_msgSend_enumerateMergedStrokesAndCapsForGridRow_from_to_usingBlock_(v39, v36, v12, var0, var1, v38);
  }

  return v19 ^ 1;
}

- (void)drawStrokesInGridRange:(id)a3 clearStrokes:(BOOL)a4 context:(CGContext *)a5
{
  v111 = a4;
  var1 = a3.var1;
  var0 = a3.var0;
  v113 = objc_msgSend_layoutEngine(self, a2, *&a3.var0, *&a3.var1, a4);
  v13 = objc_msgSend_layoutSpaceType(self, v9, v10, v11, v12);
  CGContextSaveGState(a5);
  CGContextSetBlendMode(a5, kCGBlendModeCopy);
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  if (topLeft.column != -1 && bottomRight.column != -1 && topLeft.column <= bottomRight.column)
  {
    v20 = ((*&bottomRight & 0xFFFFFFFF00000000 | (bottomRight.column + 1)) + 0x100000000);
    if (HIDWORD(*&topLeft) > HIDWORD(*&bottomRight))
    {
      v20 = self->_gridRange.bottomRight;
    }

    if (HIDWORD(*&bottomRight) == 0xFFFFFFFF)
    {
      v21 = self->_gridRange.bottomRight;
    }

    else
    {
      v21 = v20;
    }

    if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
    {
      topLeft = self->_gridRange.topLeft;
      bottomRight = v21;
    }
  }

  v112 = -1;
  if (var0.var0 == -1 || var1.var0 == -1)
  {
    v22 = -1;
  }

  else
  {
    v22 = -1;
    if (var0.var0 <= var1.var0)
    {
      v23 = HIDWORD(*&var0);
      v112 = -1;
      if (HIDWORD(*&var0) != 0xFFFFFFFF)
      {
        v24 = HIDWORD(*&var1);
        if (HIDWORD(*&var1) != 0xFFFFFFFF && v23 <= v24)
        {
          v112 = -1;
          if (topLeft.column != -1 && bottomRight.column != -1 && topLeft.column <= bottomRight.column)
          {
            v25 = HIDWORD(*&topLeft);
            v112 = -1;
            if (HIDWORD(*&topLeft) != 0xFFFFFFFF)
            {
              v26 = HIDWORD(*&bottomRight);
              if (HIDWORD(*&bottomRight) != 0xFFFFFFFF && v25 <= v26)
              {
                if (var0.var0 <= topLeft.column)
                {
                  topLeft = topLeft.column;
                }

                else
                {
                  topLeft = var0.var0;
                }

                if (var1.var0 >= bottomRight.column)
                {
                  bottomRight = bottomRight.column;
                }

                else
                {
                  bottomRight = var1.var0;
                }

                if (topLeft.column > bottomRight.column)
                {
                  goto LABEL_35;
                }

                if (v24 >= v26)
                {
                  v24 = v26;
                }

                if (v23 <= v25)
                {
                  v23 = v25;
                }

                if (v23 <= v24)
                {
                  v22 = *&bottomRight | (v24 << 32);
                  v27 = *&topLeft | (v23 << 32);
                }

                else
                {
LABEL_35:
                  v27 = -1;
                }

                v112 = v27;
              }
            }
          }
        }
      }
    }
  }

  v28 = objc_msgSend_layoutEngine(self, v14, v15, v16, v17);
  v33 = objc_msgSend_cellRange(v28, v29, v30, v31, v32);
  v35 = v34;

  v39 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v113, v36, 0, v37, v38);
  v44 = objc_msgSend_layout(self, v40, v41, v42, v43);
  v103 = sub_2211B7514(v44);

  if (objc_msgSend_numberOfHeaderColumns(v113, v45, v46, v47, v48))
  {
    if (!objc_msgSend_hasHiddenColumnAtIndex_(v113, v49, (v103 - 1), v50, v51))
    {
      goto LABEL_44;
    }

    v52 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(v113, v49, (v103 - 1), v50, v51);
    if (v52 == 0x7FFF)
    {
      v53 = -1;
    }

    else
    {
      v53 = v52 + 1;
    }
  }

  else
  {
    v53 = -1;
  }

  v103 = v53;
LABEL_44:
  v54 = v35 + WORD2(v33) - 1;
  if (v35)
  {
    v55 = WORD2(v33) == 0x7FFF;
  }

  else
  {
    v55 = 1;
  }

  if (v55)
  {
    v54 = 0x7FFF;
  }

  v109 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v113, v49, v54, v50, v51);
  v59 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v113, v56, 0, v57, v58);
  v64 = objc_msgSend_layout(self, v60, v61, v62, v63);
  v65 = sub_2211B75C0(v64);

  if (objc_msgSend_numberOfHeaderRows(v113, v66, v67, v68, v69))
  {
    if (objc_msgSend_hasHiddenRowAtIndex_(v113, v70, (v65 - 1), v72, v73))
    {
      v74 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(v113, v70, (v65 - 1), v72, v73);
      if (v74 == 0x7FFFFFFF)
      {
        v65 = -1;
      }

      else
      {
        v65 = v74 + 1;
      }
    }
  }

  else
  {
    v65 = -1;
  }

  v106 = self;
  v75 = objc_msgSend_layout(self, v70, v71, v72, v73);
  v76 = sub_2211B7664(v75);

  if (!objc_msgSend_numberOfFooterRows(v113, v77, v78, v79, v80) || !objc_msgSend_numberOfNonHiddenFooterRows(v113, v81, v82, v83, v84) || objc_msgSend_hasHiddenRowAtIndex_(v113, v81, (v76 + 1), v83, v84))
  {
    v76 = -1;
  }

  if (HIDWORD(v35))
  {
    v85 = v33 == 0x7FFFFFFF;
  }

  else
  {
    v85 = 1;
  }

  if (v85)
  {
    v86 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v113, v81, 0x7FFFFFFFLL, v83, v84);
  }

  else
  {
    v86 = objc_msgSend_indexOfVisibleRowBeforeAndIncludingRowAtIndex_(v113, v81, (v33 + HIDWORD(v35) - 1), v83, v84);
  }

  v88 = v86;
  v107 = v65;
  v89 = (v109 + 1);
  if (v112 <= v22)
  {
    v90 = 0;
    v105 = 0;
    v110 = 0;
    v91 = v112;
    do
    {
      if (v91 == v39)
      {
        v90 = 1;
        LODWORD(v91) = v39;
      }

      else if (v91 == v89)
      {
        v110 = 1;
        LODWORD(v91) = v89;
      }

      else if (v91 == v103)
      {
        v105 = 1;
        LODWORD(v91) = v103;
      }

      else if ((objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(v106, v87, v91, v112, v22, v111, 0, a5) & 1) == 0)
      {
        LODWORD(v91) = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(v113, v87, v91, v92, v93) - 1;
      }

      v91 = (v91 + 1);
    }

    while (v91 <= v22);
  }

  else
  {
    v110 = 0;
    v105 = 0;
    v90 = 0;
  }

  v102 = v76;
  c = a5;
  v94 = HIDWORD(v112);
  v95 = (v88 + 1);
  if (HIDWORD(v112) <= HIDWORD(v22))
  {
    v97 = 0;
    v96 = 0;
    v101 = 0;
    v108 = 0;
    while (1)
    {
      if (v94 == v59)
      {
        v97 = 1;
        LODWORD(v94) = v59;
      }

      else if (v94 == v95)
      {
        v108 = 1;
        LODWORD(v94) = v95;
      }

      else
      {
        v98 = v107;
        if (v94 == v107)
        {
          v96 = 1;
        }

        else
        {
          v98 = v102;
          if (v94 != v102)
          {
            if ((objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(v106, v87, v94, v112, v22, v111, 0, c) & 1) == 0)
            {
              LODWORD(v94) = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(v113, v87, v94, v99, v100) - 1;
            }

            goto LABEL_106;
          }

          v101 = 1;
        }

        LODWORD(v94) = v98;
      }

LABEL_106:
      v94 = (v94 + 1);
      if (v94 > HIDWORD(v22))
      {
        goto LABEL_79;
      }
    }
  }

  v108 = 0;
  v101 = 0;
  v96 = 0;
  v97 = 0;
LABEL_79:
  if (v105)
  {
    objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(v106, v87, v103, v112, v22, v111, (v13 - 1) < 2, c);
  }

  if (v96)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(v106, v87, v107, v112, v22, v111, (v13 & 0xFFFFFFFD) == 1, c);
  }

  if (v101)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(v106, v87, v102, v112, v22, v111, 0, c);
  }

  if (v90)
  {
    objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(v106, v87, v39, v112, v22, v111, 0, c);
  }

  if (v110)
  {
    objc_msgSend_p_drawStrokeForGridColumn_strokeRect_clearStroke_shadowType_context_(v106, v87, v89, v112, v22, v111, 0, c);
  }

  if (v97)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(v106, v87, v59, v112, v22, v111, 0, c);
  }

  if (v108)
  {
    objc_msgSend_p_drawStrokeForGridRow_strokeRect_clearStroke_shadowType_context_(v106, v87, v95, v112, v22, v111, 0, c);
  }

  CGContextRestoreGState(c);
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_extendedBodyGridRange
{
  topLeft = self->_gridRange.topLeft;
  bottomRight = self->_gridRange.bottomRight;
  v7 = objc_msgSend_p_footerRowsGridRange(self, a2, v2, v3, v4);
  if (v7 == -1 || v8.var0 == -1 || v7 > v8.var0 || (HIDWORD(v7) <= HIDWORD(*&v8) ? (v9 = HIDWORD(v7) == 0xFFFFFFFF) : (v9 = 1), !v9 ? (v10 = HIDWORD(*&v8) == 0xFFFFFFFF) : (v10 = 1), v10))
  {
    v8 = bottomRight;
  }

  v11 = topLeft;
  result.var1 = v8;
  result.var0 = v11;
  return result;
}

- (double)p_bodyTranslationX
{
  v6 = objc_msgSend_p_bodyGridRange(self, a2, v2, v3, v4);
  if (objc_msgSend_headerColumnsRepeat(self, v7, v8, v9, v10) && ((objc_msgSend_isMain(self, v11, v12, v13, v14) & 1) != 0 || objc_msgSend_layoutSpaceType(self, v15, v16, v17, v18) == 6))
  {
    return 0.0;
  }

  objc_msgSend_p_rawTableCoordinateForGridColumn_(self, v11, v6, v13, v14);
  return result;
}

- (double)p_bodyTranslationY
{
  v6 = objc_msgSend_p_bodyGridRange(self, a2, v2, v3, v4);
  if (objc_msgSend_headerRowsRepeat(self, v7, v8, v9, v10) && ((objc_msgSend_isMain(self, v11, v12, v13, v14) & 1) != 0 || objc_msgSend_layoutSpaceType(self, v15, v16, v17, v18) == 5))
  {
    return 0.0;
  }

  objc_msgSend_p_tableCoordinateForGridRow_(self, v11, HIDWORD(v6), v13, v14);
  return result;
}

- (id)p_createColumnCoordinatesForGridRange:(id)a3 invalidColumnIndex:(unsigned __int16)a4 previousCoordinates:(id)a5 outCoordinatesChanged:(BOOL *)a6
{
  v6 = a4;
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = a5;
  v15 = [TSTCoordinateArray alloc];
  if (var0 == -1 || var1.var0 == -1 || var1.var0 < var0 || (HIDWORD(var0) <= HIDWORD(*&var1) ? (v16 = HIDWORD(var0) == 0xFFFFFFFF) : (v16 = 1), !v16 ? (v17 = HIDWORD(*&var1) == 0xFFFFFFFF) : (v17 = 1), v17))
  {
    v18 = 0;
  }

  else
  {
    v18 = var1.var0 - var0 + 1;
  }

  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v11, v12, v13, v14);
  v21 = objc_msgSend_initWithCount_atOffset_layoutDirectionIsLeftToRight_(v15, v20, (v18 + 1), var0, IsLeftToRight);
  v26 = objc_msgSend_layout(self, v22, v23, v24, v25);
  v31 = sub_2211B7A50(v26, v27, v28, v29, v30);
  v79 = 0;
  v78 = 0.0;
  if (objc_msgSend_headerColumnsRepeat(self, v32, v33, v34, v35) && ((isMain = objc_msgSend_isMain(self, v36, v37, v38, v39), var0) ? (v41 = isMain) : (v41 = 0), (v41 & 1) != 0) || objc_msgSend_headerColumnsRepeat(self, v36, v37, v38, v39) && objc_msgSend_layoutSpaceType(self, v42, v43, v44, v45) == 6)
  {
    sub_2211B6E48(v26);
    v46 = v42;
    if (v42)
    {
      v47 = 0;
      v48 = 0.0;
      do
      {
        v49 = objc_msgSend_layoutEngine(v26, v42, v43, v44, v45);
        objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v49, v50, v47, 0, 1, &v79);
        v52 = v51;

        v48 = v52 + v48;
        v78 = v48;
        ++v47;
      }

      while (v46 > v47);
    }
  }

  v53 = objc_msgSend_layoutEngine(v26, v42, v43, v44, v45);
  v58 = objc_msgSend_numberOfColumns(v53, v54, v55, v56, v57) - 1;

  if (var1.var0 >= v58)
  {
    var1.var0 = v58;
  }

  if (v10)
  {
    v62 = a6;
    if (v6 && !v31)
    {
      var0 = sub_2211F0154(v21, v10, v6, &v78);
    }
  }

  else
  {
    v62 = a6;
  }

  if (var0 <= var1.var0)
  {
    v63 = v78;
    do
    {
      sub_2211EFC48(v21, var0, v63);
      v68 = objc_msgSend_layoutEngine(v26, v64, v65, v66, v67);
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v68, v69, var0, 0, 1, &v79);
      v71 = v70;

      if (v71 == 0.0)
      {
        sub_2211EFC18(v21, var0, v72, v73, v74);
      }

      v63 = v71 + v78;
      v78 = v71 + v78;
      var0 = (var0 + 1);
    }

    while (var0 <= var1.var0);
    sub_2211EFC48(v21, var0, v63);
  }

  if (v62)
  {
    if (v10)
    {
      isEqual = objc_msgSend_isEqual_(v10, v59, v21, v60, v61);
    }

    else
    {
      isEqual = 0;
    }

    *v62 = isEqual ^ 1;
  }

  return v21;
}

- (id)p_createRowCoordinatesForGridRange:(id)a3 invalidRowIndex:(unsigned int)a4 previousCoordinates:(id)a5 validateSingleRow:(BOOL)a6 outCoordinatesChanged:(BOOL *)a7
{
  v7 = a6;
  var1 = a3.var1;
  var0 = a3.var0;
  v12 = a5;
  v13 = [TSTCoordinateArray alloc];
  v15 = HIDWORD(*&var1);
  if (var0.var0 == -1 || var1.var0 == -1 || var0.var0 > var1.var0)
  {
    v16 = HIDWORD(*&var0);
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v16 = HIDWORD(*&var0);
  if (HIDWORD(*&var0) > HIDWORD(*&var1) || v16 == 0xFFFFFFFFLL || v15 == 0xFFFFFFFF)
  {
    goto LABEL_13;
  }

  v19 = var1.var1 - var0.var1 + 1;
LABEL_14:
  IsLeftToRight = objc_msgSend_initWithCount_atOffset_layoutDirectionIsLeftToRight_(v13, v14, (v19 + 1), v16, 1);
  v25 = objc_msgSend_layout(self, v21, v22, v23, v24);
  v95 = sub_2211B7A50(v25, v26, v27, v28, v29);
  objc_msgSend_scaleToFitParent(v25, v30, v31, v32, v33);
  v35 = v34;
  v40 = objc_msgSend_layoutHint(v25, v36, v37, v38, v39);
  objc_msgSend_maximumSize(v40, v41, v42, v43, v44);
  v46 = v45;
  v48 = v47;

  v53 = objc_msgSend_layoutEngine(v25, v49, v50, v51, v52);
  v97 = 0.0;
  if (objc_msgSend_headerRowsRepeat(self, v54, v55, v56, v57) && ((isMain = objc_msgSend_isMain(self, v58, v59, v60, v61), HIDWORD(*&var0)) ? (v63 = isMain) : (v63 = 0), (v63 & 1) != 0) || objc_msgSend_headerRowsRepeat(self, v58, v59, v60, v61) && objc_msgSend_layoutSpaceType(self, v64, v65, v66, v67) == 5)
  {
    sub_2211B7004(v25);
    v68 = v64 >> 32;
    if (v64 >> 32)
    {
      v69 = 0;
      do
      {
        objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v53, v64, v69, 0, 1, 1, 1, 0, v46, v48);
        v97 = v35 * v70 + v97;
        v69 = (v69 + 1);
      }

      while (v68 != v69);
    }
  }

  v71 = objc_msgSend_layoutEngine(v25, v64, v65, v66, v67);
  v76 = objc_msgSend_numberOfRows(v71, v72, v73, v74, v75) - 1;

  if (v15 < v76)
  {
    v76 = v15;
  }

  if (v12 && a4 != 0x7FFFFFFF && !v95)
  {
    v16 = sub_2211F0154(IsLeftToRight, v12, a4, &v97);
  }

  if (v16 <= v76)
  {
    v80 = 0;
    v81 = 0.0;
    v82 = v97;
    while (1)
    {
      sub_2211EFC48(IsLeftToRight, v16, v82);
      v87 = 0.0;
      if ((v80 & 1) == 0)
      {
        objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v53, v83, v16, 0, 1, 1, 1, 0, v46, v48);
        v87 = v35 * v88;
      }

      if (v12 && v16 == a4 && v7)
      {
        v89 = v97;
        v81 = v87 + v89 - sub_2211EFCD0(v12, a4 + 1);
        if (v81 == 0.0)
        {
          v94 = v12;

          v90 = a7;
          if (a7)
          {
            v92 = 0;
            IsLeftToRight = v94;
            goto LABEL_51;
          }

          IsLeftToRight = v94;
          goto LABEL_52;
        }
      }

      else
      {
        if (!(v80 & 1 | (v87 != 0.0)))
        {
          sub_2211EFC18(IsLeftToRight, v16, v84, v85, v86);
        }

        if ((v80 & 1) == 0)
        {
          v80 = 0;
          v82 = v87 + v97;
          v16 = (v16 + 1);
          goto LABEL_44;
        }
      }

      v16 = (v16 + 1);
      v82 = v81 + sub_2211EFCD0(v12, v16);
      v80 = 1;
LABEL_44:
      v97 = v82;
      if (v16 > v76)
      {
        sub_2211EFC48(IsLeftToRight, v16, v82);
        break;
      }
    }
  }

  v90 = a7;
  if (a7)
  {
    if (v12)
    {
      isEqual = objc_msgSend_isEqual_(v12, v77, IsLeftToRight, v78, v79);
    }

    else
    {
      isEqual = 0;
    }

    v92 = isEqual ^ 1;
LABEL_51:
    *v90 = (*v90 | v92) & 1;
  }

LABEL_52:

  return IsLeftToRight;
}

- (void)validateCachedFrames
{
  if (self->_invalidTableOffset || self->_invalidColumnIndex != 0x7FFF || self->_invalidRowIndex != 0x7FFFFFFF)
  {
    v2 = *MEMORY[0x277CBF3A0];
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    self->_cachedFrame.origin = *MEMORY[0x277CBF3A0];
    self->_cachedFrame.size = v3;
    self->_cachedAlignedFrame.origin = v2;
    self->_cachedAlignedFrame.size = v3;
    self->_cachedStrokeFrame.origin = v2;
    self->_cachedStrokeFrame.size = v3;
    self->_cachedAlignedStrokeFrame.origin = v2;
    self->_cachedAlignedStrokeFrame.size = v3;
  }
}

- (int)validateCoordinateCache:(id)a3
{
  v7 = a3;
  v83 = 0;
  invalidColumnIndex = self->_invalidColumnIndex;
  invalidRowIndex = self->_invalidRowIndex;
  if (invalidColumnIndex == 0x7FFF)
  {
    if (invalidRowIndex == 0x7FFFFFFF)
    {
      v10 = 0;
      goto LABEL_71;
    }

LABEL_5:
    if (self->_layoutSpaceType)
    {
      v11 = objc_msgSend_p_createRowCoordinatesForGridRange_invalidRowIndex_previousCoordinates_validateSingleRow_outCoordinatesChanged_(self, v4, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight, self->_invalidRowIndex, self->_headerColumnRowCoordinates, self->_invalidatedForEditingCell, &v83);
      v12 = 0;
    }

    else
    {
      v32 = objc_msgSend_p_topLeftCornerGridRange(self, v4, v5, v6, invalidColumnIndex);
      v36 = v32;
      if (v32 != -1 && v33 != -1 && v32 <= v33 && HIDWORD(v32) != 0xFFFFFFFF && HIDWORD(v33) != 0xFFFFFFFF && HIDWORD(v32) <= HIDWORD(v33) || (v37 = objc_msgSend_p_headerColumnsGridRange(self, v33, v32, v34, v35), v36 = v37, v11 = 0, v37 != -1) && v33 != -1 && v37 <= v33 && (v11 = 0, HIDWORD(v37) != 0xFFFFFFFF) && HIDWORD(v33) != 0xFFFFFFFF && HIDWORD(v37) <= HIDWORD(v33))
      {
        v11 = objc_msgSend_p_createRowCoordinatesForGridRange_invalidRowIndex_previousCoordinates_validateSingleRow_outCoordinatesChanged_(self, v33, v36, v33, self->_invalidRowIndex, self->_headerColumnRowCoordinates, self->_invalidatedForEditingCell, &v83);
      }

      v40 = objc_msgSend_p_extendedBodyGridRange(self, v33, v36, v38, v39);
      v12 = 0;
      if (v40 != -1 && v41 != -1 && v40 <= v41)
      {
        v12 = 0;
        if (HIDWORD(v40) != 0xFFFFFFFF && HIDWORD(v41) != 0xFFFFFFFF && HIDWORD(v40) <= HIDWORD(v41))
        {
          v12 = objc_msgSend_p_createRowCoordinatesForGridRange_invalidRowIndex_previousCoordinates_validateSingleRow_outCoordinatesChanged_(self, v41, v40, v41, self->_invalidRowIndex, self->_bodyRowCoordinates, self->_invalidatedForEditingCell, &v83);
        }
      }
    }

    headerColumnRowCoordinates = self->_headerColumnRowCoordinates;
    self->_headerColumnRowCoordinates = 0;

    bodyRowCoordinates = self->_bodyRowCoordinates;
    self->_bodyRowCoordinates = 0;

    v15 = self->_headerColumnRowCoordinates;
    self->_headerColumnRowCoordinates = v11;
    v16 = v11;

    v17 = self->_bodyRowCoordinates;
    self->_bodyRowCoordinates = v12;

    self->_invalidRowIndex = 0x7FFFFFFF;
    self->_invalidatedForEditingCell = 0;
    invalidColumnIndex = self->_invalidColumnIndex;
    if (invalidColumnIndex == 0x7FFF)
    {
      goto LABEL_67;
    }

    goto LABEL_8;
  }

  if (invalidRowIndex != 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

LABEL_8:
  if (self->_layoutSpaceType)
  {
    v18 = objc_msgSend_p_createColumnCoordinatesForGridRange_invalidColumnIndex_previousCoordinates_outCoordinatesChanged_(self, v4, *&self->_gridRange.topLeft, *&self->_gridRange.bottomRight, invalidColumnIndex, self->_headerRowColumnCoordinates, &v83 + 1);
    v19 = 0;
  }

  else
  {
    v42 = objc_msgSend_p_topLeftCornerGridRange(self, v4, v5, v6, invalidColumnIndex);
    v46 = v42;
    if (v42 != -1 && v43 != -1 && v42 <= v43 && HIDWORD(v42) != 0xFFFFFFFF && HIDWORD(v43) != 0xFFFFFFFF && HIDWORD(v42) <= HIDWORD(v43) || (v47 = objc_msgSend_p_headerRowsGridRange(self, v43, v42, v44, v45), v46 = v47, v18 = 0, v47 != -1) && v43 != -1 && v47 <= v43 && (v18 = 0, HIDWORD(v47) != 0xFFFFFFFF) && HIDWORD(v43) != 0xFFFFFFFF && HIDWORD(v47) <= HIDWORD(v43))
    {
      v18 = objc_msgSend_p_createColumnCoordinatesForGridRange_invalidColumnIndex_previousCoordinates_outCoordinatesChanged_(self, v43, v46, v43, self->_invalidColumnIndex, self->_headerRowColumnCoordinates, &v83 + 1);
    }

    v50 = objc_msgSend_p_extendedBodyGridRange(self, v43, v46, v48, v49);
    v19 = 0;
    if (v50 != -1 && v51 != -1 && v50 <= v51)
    {
      v19 = 0;
      if (HIDWORD(v50) != 0xFFFFFFFF && HIDWORD(v51) != 0xFFFFFFFF && HIDWORD(v50) <= HIDWORD(v51))
      {
        v19 = objc_msgSend_p_createColumnCoordinatesForGridRange_invalidColumnIndex_previousCoordinates_outCoordinatesChanged_(self, v51, v50, v51, self->_invalidColumnIndex, self->_bodyColumnCoordinates, &v83 + 1);
      }
    }
  }

  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  self->_headerRowColumnCoordinates = 0;

  bodyColumnCoordinates = self->_bodyColumnCoordinates;
  self->_bodyColumnCoordinates = 0;

  if (!self->_layoutDirectionIsLeftToRight)
  {
    if (v19)
    {
      v22 = v19;
      objc_msgSend_p_extendedBodyGridRange(self, v23, v24, v25, v26);
      bottomRight.column = v27;
    }

    else
    {
      v52 = v18;
      bottomRight = self->_gridRange.bottomRight;
      if (v52)
      {
        v22 = v52;
      }

      else
      {
        v53 = MEMORY[0x277D81150];
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTLayoutSpace validateCoordinateCache:]", v29, v30);
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutSpace.mm", v56, v57);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 2926, 0, "There are no column coordinates");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
        v22 = 0;
      }
    }

    v68 = objc_msgSend_isMain(self, v27, v28, v29, v30) ^ 1;
    if (!v7)
    {
      LOBYTE(v68) = 0;
    }

    if (v68)
    {
      objc_msgSend_gridRange(v7, v64, v65, v66, v67);
      objc_msgSend_p_rawTableCoordinateForGridColumn_(v7, v74, (v74 + 1), v75, v76);
    }

    else
    {
      v73 = sub_2211EFE04(v22, bottomRight.column + 1);
    }

    v77 = v73;
    if (v19)
    {
      objc_msgSend_setTableWidthForRightToLeft_(v19, v69, v70, v71, v72, v73);
    }

    if (v18)
    {
      objc_msgSend_setTableWidthForRightToLeft_(v18, v69, v70, v71, v72, v77);
    }

    HIBYTE(v83) = 1;
  }

  v78 = self->_headerRowColumnCoordinates;
  self->_headerRowColumnCoordinates = v18;
  v79 = v18;

  v80 = self->_bodyColumnCoordinates;
  self->_bodyColumnCoordinates = v19;

  self->_invalidColumnIndex = 0x7FFF;
LABEL_67:
  if (v83)
  {
    v81 = 2;
  }

  else
  {
    v81 = 0;
  }

  v10 = v81 | HIBYTE(v83);
LABEL_71:

  return v10;
}

- (double)p_tableCoordinateForGridColumn:(unsigned int)a3
{
  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  if (headerRowColumnCoordinates && sub_2211EFC24(headerRowColumnCoordinates, a3))
  {
    p_headerRowColumnCoordinates = &self->_headerRowColumnCoordinates;
  }

  else
  {
    p_headerRowColumnCoordinates = &self->_bodyColumnCoordinates;
  }

  v7 = *p_headerRowColumnCoordinates;

  return sub_2211EFCD0(v7, a3);
}

- (double)p_rawTableCoordinateForGridColumn:(unsigned int)a3
{
  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  if (headerRowColumnCoordinates && sub_2211EFC24(headerRowColumnCoordinates, a3))
  {
    p_headerRowColumnCoordinates = &self->_headerRowColumnCoordinates;
  }

  else
  {
    p_headerRowColumnCoordinates = &self->_bodyColumnCoordinates;
  }

  v7 = *p_headerRowColumnCoordinates;

  return sub_2211EFE04(v7, a3);
}

- (double)p_tableCoordinateForGridRow:(unsigned int)a3
{
  headerColumnRowCoordinates = self->_headerColumnRowCoordinates;
  if (headerColumnRowCoordinates && sub_2211EFC24(headerColumnRowCoordinates, a3))
  {
    p_headerColumnRowCoordinates = &self->_headerColumnRowCoordinates;
  }

  else
  {
    p_headerColumnRowCoordinates = &self->_bodyRowCoordinates;
  }

  v7 = *p_headerColumnRowCoordinates;

  return sub_2211EFCD0(v7, a3);
}

- (unsigned)p_gridColumnForTableCoordinate:(double)a3
{
  headerRowColumnCoordinates = self->_headerRowColumnCoordinates;
  if (!headerRowColumnCoordinates || (result = sub_2211EFF18(headerRowColumnCoordinates, a3), result == -1))
  {
    bodyColumnCoordinates = self->_bodyColumnCoordinates;

    return sub_2211EFF18(bodyColumnCoordinates, a3);
  }

  return result;
}

- (unsigned)p_gridRowForTableCoordinate:(double)a3
{
  headerColumnRowCoordinates = self->_headerColumnRowCoordinates;
  if (!headerColumnRowCoordinates || (result = sub_2211EFF18(headerColumnRowCoordinates, a3), result == -1))
  {
    bodyRowCoordinates = self->_bodyRowCoordinates;

    return sub_2211EFF18(bodyRowCoordinates, a3);
  }

  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)p_gridRangeForTableRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_msgSend_frame(self, a2, v3, v4, v5);
  objc_msgSend_p_tableRectForLayoutRect_(self, v11, v12, v13, v14);
  v15 = v54.origin.x;
  v16 = v54.origin.y;
  v17 = v54.size.width;
  v18 = v54.size.height;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = v15;
  v55.origin.y = v16;
  v55.size.width = v17;
  v55.size.height = v18;
  MaxX = CGRectGetMaxX(v55);
  v56.origin.x = v15;
  v56.origin.y = v16;
  v56.size.width = v17;
  v56.size.height = v18;
  MinY = CGRectGetMinY(v56);
  v57.origin.x = v15;
  v57.origin.y = v16;
  v57.size.width = v17;
  v57.size.height = v18;
  MaxY = CGRectGetMaxY(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v20 = CGRectGetMinX(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v21 = CGRectGetMaxX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v22 = CGRectGetMinY(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  v27 = CGRectGetMaxY(v61);
  if (v20 >= MinX)
  {
    v28 = v20;
  }

  else
  {
    v28 = MinX;
  }

  if (MaxX >= v21)
  {
    v29 = v21;
  }

  else
  {
    v29 = MaxX;
  }

  if (v22 >= MinY)
  {
    v30 = v22;
  }

  else
  {
    v30 = MinY;
  }

  if (MaxY >= v27)
  {
    v31 = v27;
  }

  else
  {
    v31 = MaxY;
  }

  if (v28 > v29)
  {
    LODWORD(v32) = -1;
LABEL_22:
    LODWORD(v37) = -1;
    goto LABEL_23;
  }

  v32 = objc_msgSend_p_gridColumnForTableCoordinate_(self, v23, v24, v25, v26, v28);
  if (v32 == -1)
  {
    goto LABEL_22;
  }

  v37 = objc_msgSend_p_gridColumnForTableCoordinate_(self, v23, v24, v25, v26, v29);
  if (v37 == -1 || !objc_msgSend_layoutDirectionIsLeftToRight(self, v33, v34, v35, v36))
  {
    if ((objc_msgSend_layoutDirectionIsLeftToRight(self, v33, v34, v35, v36) & 1) == 0)
    {
      objc_msgSend_p_tableCoordinateForGridColumn_(self, v23, v32, v25, v26);
      if (v49 + 0.00999999978 > v28)
      {
        if (v32 >= objc_msgSend_gridRange(self, v23, v24, v25, v26))
        {
          LODWORD(v32) = v32 + 1;
        }

        else
        {
          LODWORD(v32) = -1;
        }
      }
    }
  }

  else
  {
    objc_msgSend_p_tableCoordinateForGridColumn_(self, v33, v37, v35, v36);
    if (v38 + 0.00999999978 < v29)
    {
      objc_msgSend_gridRange(self, v23, v24, v25, v26);
      if (v37 <= v23)
      {
        LODWORD(v37) = v37 + 1;
      }

      else
      {
        LODWORD(v37) = -1;
      }
    }
  }

LABEL_23:
  if (v30 > v31 || (v39 = objc_msgSend_p_gridRowForTableCoordinate_(self, v23, v24, v25, v26, v30), v39 == -1))
  {
    v42 = 0xFFFFFFFFLL;
    v40 = 0xFFFFFFFFLL;
  }

  else
  {
    v40 = v39;
    v41 = objc_msgSend_p_gridRowForTableCoordinate_(self, v23, v24, v25, v26, v31);
    if (v41 == -1)
    {
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      v42 = v41;
      objc_msgSend_p_tableCoordinateForGridRow_(self, v23, v41, v25, v26);
      if (v43 + 0.00999999978 < v31)
      {
        objc_msgSend_gridRange(self, v23, v24, v25, v26);
        if (v42 <= HIDWORD(v23))
        {
          v42 = (v42 + 1);
        }

        else
        {
          v42 = 0xFFFFFFFFLL;
        }
      }
    }
  }

  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v23, v24, v25, v26);
  if (IsLeftToRight)
  {
    v45 = v32;
  }

  else
  {
    v45 = v37;
  }

  if (IsLeftToRight)
  {
    v46 = v37;
  }

  else
  {
    v46 = v32;
  }

  v47 = (v46 | (v42 << 32));
  v48 = (v45 | (v40 << 32));
  result.var1 = v47;
  result.var0 = v48;
  return result;
}

- ($85CD2974BE96D4886BB301820D1C36C2)p_gridPointForTablePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_frame(self, a2, v3, v4, v5);
  objc_msgSend_p_tableRectForLayoutRect_(self, v9, v10, v11, v12);
  v13 = v29.origin.x;
  v14 = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if (x + 0.00000011920929 >= CGRectGetMinX(v29) && (v30.origin.x = v13, v30.origin.y = v14, v30.size.width = width, v30.size.height = height, x <= CGRectGetMaxX(v30) + 0.00000011920929))
  {
    v21 = objc_msgSend_p_gridColumnForTableCoordinate_(self, v17, v18, v19, v20, x);
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v31.origin.x = v13;
  v31.origin.y = v14;
  v31.size.width = width;
  v31.size.height = height;
  if (y + 0.00000011920929 >= CGRectGetMinY(v31))
  {
    v26 = objc_msgSend_p_gridRowForTableCoordinate_(self, v22, v23, v24, v25, y) << 32;
  }

  else
  {
    v26 = 0xFFFFFFFF00000000;
  }

  return (v26 | v21);
}

- (CGRect)p_tableRectForGridRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  objc_msgSend_p_tableCoordinateForGridColumn_(self, a2, *&a3.var0, *&a3.var1, v3);
  v8 = v7;
  objc_msgSend_p_tableCoordinateForGridRow_(self, v9, HIDWORD(*&var0), v10, v11);
  v13 = v12;
  objc_msgSend_p_tableCoordinateForGridColumn_(self, v14, var1.var0 + 1, v15, v16);
  v18 = v17;
  objc_msgSend_p_tableCoordinateForGridRow_(self, v19, var1.var1 + 1, v20, v21);
  v23 = v22;
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v24, v25, v26, v27);
  if (IsLeftToRight)
  {
    v29 = v8;
  }

  else
  {
    v29 = v18;
  }

  if (IsLeftToRight)
  {
    v30 = v18;
  }

  else
  {
    v30 = v8;
  }

  v31 = v30 - v29;
  v32 = v23 - v13;
  v33 = v13;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v33;
  result.origin.x = v29;
  return result;
}

- (double)p_tableCoordinateForX:(double)a3
{
  objc_msgSend_tableOffset(self, a2, v3, v4, v5);
  v9 = v8;
  v14 = objc_msgSend_layout(self, v10, v11, v12, v13);
  v23 = a3 - v9;
  if (sub_2211B7A08(v14, v15, v16, v17, v18))
  {
  }

  else
  {
    objc_msgSend_headerColumnsWidth(self, v19, v20, v21, v22);
    v25 = v24;

    if (v23 > v25)
    {
      objc_msgSend_p_bodyTranslationX(self, v26, v27, v28, v29);
      v31 = v30;
      objc_msgSend_headerColumnsWidth(self, v32, v33, v34, v35);
      return v23 + v31 - v36;
    }
  }

  return v23;
}

- (double)p_tableCoordinateForY:(double)a3
{
  objc_msgSend_tableOffset(self, a2, v3, v4, v5);
  v9 = v8;
  v14 = objc_msgSend_layout(self, v10, v11, v12, v13);
  v23 = a3 - v9;
  if (sub_2211B4730(v14, v15, v16, v17, v18))
  {
  }

  else
  {
    objc_msgSend_headerRowsHeight(self, v19, v20, v21, v22);
    v25 = v24;

    if (v23 > v25)
    {
      objc_msgSend_p_bodyTranslationY(self, v26, v27, v28, v29);
      v31 = v30;
      objc_msgSend_headerRowsHeight(self, v32, v33, v34, v35);
      return v23 + v31 - v36;
    }
  }

  return v23;
}

- (CGPoint)p_tablePointForLayoutPoint:(CGPoint)a3
{
  y = a3.y;
  objc_msgSend_p_tableCoordinateForX_(self, a2, v3, v4, v5, a3.x);
  v9 = v8;
  objc_msgSend_p_tableCoordinateForY_(self, v10, v11, v12, v13, y);
  v15 = v14;
  v16 = v9;
  result.y = v15;
  result.x = v16;
  return result;
}

- (int)p_cellTypeForGridPoint:(id)a3
{
  v7 = objc_msgSend_layout(self, a2, *&a3, v3, v4);
  v8 = v7;
  v9 = 0;
  if (*&a3 <= 0xFFFFFFFEFFFFFFFFLL && a3.var0 != 0xFFFFFFFFLL)
  {
    v10 = sub_2211B7764(v7);
    v15 = HIDWORD(*&a3);
    if (WORD2(v10) == 0x7FFF)
    {
      v16 = -1;
    }

    else
    {
      v16 = WORD2(v10);
    }

    v17 = v10 << 32;
    if (v10 == 0x7FFFFFFF)
    {
      v17 = 0xFFFFFFFF00000000;
    }

    if (v11 >> 32)
    {
      v18 = (&v11[v17] & 0xFFFFFFFF00000000) - 0x100000000;
    }

    else
    {
      v18 = 0xFFFFFFFF00000000;
    }

    v19 = HIDWORD(v17);
    if (v16 <= a3.var0)
    {
      if (v15 < v19 && v11 && v11 + v16 - 1 < a3.var0)
      {
        if (objc_msgSend_layoutDirectionIsLeftToRight(self, v11, v12, v13, v14))
        {
          v9 = 3;
        }

        else
        {
          v9 = 1;
        }
      }

      else if (v15 >= v19)
      {
        if (v15 <= HIDWORD(v18))
        {
          v9 = 0;
        }

        else
        {
          v9 = 5;
        }
      }

      else
      {
        v9 = 3;
      }
    }

    else if (v15 < v19 && (objc_msgSend_layoutDirectionIsLeftToRight(self, v11, v12, v13, v14) & 1) != 0)
    {
      v9 = 1;
    }

    else if (v15 <= HIDWORD(v18))
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }
  }

  return v9;
}

- (CGPoint)p_layoutOffsetForGridPoint:(id)a3
{
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  v8 = objc_msgSend_p_cellTypeForGridPoint_(self, a2, *&a3, v3, v4);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 2)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v8 == 3)
  {
    objc_msgSend_p_bodyTranslationX(self, v9, v10, v11, v12);
    v32 = v31;
    objc_msgSend_headerColumnsWidth(self, v33, v34, v35, v36);
    v6 = v6 - (v32 - v37);
    goto LABEL_11;
  }

  if (v8 != 4)
  {
    if (v8 != 5)
    {
      goto LABEL_11;
    }

LABEL_9:
    objc_msgSend_p_bodyTranslationX(self, v9, v10, v11, v12);
    v14 = v13;
    objc_msgSend_headerColumnsWidth(self, v15, v16, v17, v18);
    v6 = v6 - (v14 - v19);
  }

LABEL_10:
  objc_msgSend_p_bodyTranslationY(self, v9, v10, v11, v12);
  v21 = v20;
  objc_msgSend_headerRowsHeight(self, v22, v23, v24, v25);
  v7 = v7 - (v21 - v26);
LABEL_11:
  objc_msgSend_tableOffset(self, v9, v10, v11, v12);
  v28 = v6 + v27;
  v30 = v7 + v29;
  result.y = v30;
  result.x = v28;
  return result;
}

- (CGPoint)p_layoutOffsetForTablePoint:(CGPoint)a3
{
  y = a3.y;
  v8 = objc_msgSend_p_gridColumnForTableCoordinate_(self, a2, v3, v4, v5, a3.x);
  v14 = v8 | (objc_msgSend_p_gridRowForTableCoordinate_(self, v9, v10, v11, v12, y) << 32);

  objc_msgSend_p_layoutOffsetForGridPoint_(self, v13, v14, v15, v16);
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)p_layoutPointForTablePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_p_layoutOffsetForTablePoint_(self, a2, v3, v4, v5);
  v9 = x + v8;
  v11 = y + v10;
  result.y = v11;
  result.x = v9;
  return result;
}

- (CGRect)p_tableRectForLayoutRect:(CGRect)a3
{
  objc_msgSend_p_tablePointForLayoutPoint_(self, a2, v3, v4, v5, a3.origin.x, a3.origin.y);

  TSURectWithOriginAndSize();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)p_layoutRectForTableRect:(CGRect)a3
{
  objc_msgSend_p_layoutPointForTablePoint_(self, a2, v3, v4, v5, a3.origin.x, a3.origin.y);

  TSURectWithOriginAndSize();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_frameSpecForGridRange:(SEL)a3 frameType:(id)a4 strokeWidthOverride:(int)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v103 = objc_msgSend_layoutEngine(self, a3, *&a4.var0, *&a4.var1, *&a5);
  v101 = objc_msgSend_layout(self, v12, v13, v14, v15);
  v20 = objc_msgSend_layoutHint(v101, v16, v17, v18, v19);
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v21, v22, v23, v24);
  v28 = HIDWORD(var0);
  v102 = var0;
  v99 = HIDWORD(var1);
  if (a6)
  {
    v29 = *a6;
    v30 = *a6;
    v31 = *a6;
    v32 = *a6;
    goto LABEL_3;
  }

  if (a5 != 1)
  {
    if (a5 == 2)
    {
      objc_msgSend_strokeHeightOfGridRow_atColumnIndex_(v103, v25, HIDWORD(var0), var0, v26);
      v32 = v37;
      objc_msgSend_strokeHeightOfGridRow_atColumnIndex_(v103, v38, (HIDWORD(var1) + 1), var1, v39);
      v31 = v40;
      objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(v103, v41, var0, HIDWORD(var0), (HIDWORD(var1) + 1));
      v30 = v42;
      v29 = v42;
      goto LABEL_9;
    }

    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(v103, v25, HIDWORD(var0), var0, (var1 + 1));
    v32 = v92;
    objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(v103, v93, (HIDWORD(var1) + 1), var0, (var1 + 1));
    v31 = v94;
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(v103, v95, var0, HIDWORD(var0), (HIDWORD(var1) + 1));
    v29 = v96;
    objc_msgSend_strokeWidthOfGridColumn_beginRow_endRow_(v103, v97, (var1 + 1), HIDWORD(var0), (HIDWORD(var1) + 1));
    v30 = v98;
LABEL_3:
    if (a5 != 2)
    {
      if (a5 != 1)
      {
        v33 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v25, var0, var1, self);
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v33 = objc_msgSend_intersectionColumnGridRange_ofLayoutSpace_(TSTLayoutSpace, v25, var0, var1, self, v99);
    goto LABEL_12;
  }

  objc_msgSend_strokeHeightOfGridRow_beginColumn_endColumn_(v103, v25, HIDWORD(var0), var0, (var1 + 1));
  v32 = v43;
  objc_msgSend_strokeWidthOfGridColumn_atRowIndex_(v103, v44, var0, HIDWORD(var0), v45);
  v29 = v46;
  objc_msgSend_strokeWidthOfGridColumn_atRowIndex_(v103, v47, (var1 + 1), HIDWORD(var1), v48);
  v30 = v49;
  v31 = v32;
LABEL_11:
  v33 = objc_msgSend_intersectionRowGridRange_ofLayoutSpace_(TSTLayoutSpace, v25, var0, var1, self, v99);
LABEL_12:
  v50 = v33;
  v51 = v34;
  objc_msgSend_p_tableCoordinateForGridColumn_(self, v34, v33, v35, v36, v99);
  v57 = v56;
  v58 = v56;
  if (a5 != 2)
  {
    objc_msgSend_p_tableCoordinateForGridColumn_(self, v52, (v51 + 1), v54, v55);
    v58 = v59;
  }

  if ((IsLeftToRight & 1) != 0 || (v79 = objc_msgSend_gridRange(self, v52, v53, v54, v55), v79 == -1) || v52 == -1 || v79 > v52 || HIDWORD(v79) == 0xFFFFFFFF || v52 >> 32 == 0xFFFFFFFF || HIDWORD(v79) > v52 >> 32)
  {
    v60 = v29;
    v29 = v30;
    v61 = v57;
    v57 = v58;
  }

  else
  {
    v60 = v30;
    v61 = v58;
  }

  v62 = HIDWORD(v50);
  objc_msgSend_p_tableCoordinateForGridRow_(self, v52, HIDWORD(v50), v54, v55);
  v68 = v67;
  v69 = v67;
  if (a5 != 1)
  {
    objc_msgSend_p_tableCoordinateForGridRow_(self, v63, (HIDWORD(v51) + 1), v65, v66);
    v69 = v70;
  }

  if (v102 < v50)
  {
    v71 = v102;
    do
    {
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v103, v63, v71, 0, 1, 0);
      v61 = v61 - v72;
      ++v71;
    }

    while (v50 != v71);
  }

  v73 = v51 + 1;
  if (v51 + 1 < (var1 + 1))
  {
    v74 = var1 - v51;
    do
    {
      objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(v103, v63, v73, 0, 1, 0);
      if (IsLeftToRight)
      {
        v57 = v57 + v75;
      }

      else
      {
        v61 = v61 - v75;
      }

      ++v73;
      --v74;
    }

    while (v74);
  }

  if (v28 >= v62)
  {
    v76 = v102;
  }

  else
  {
    v76 = v102;
    do
    {
      objc_msgSend_maximumSize(v20, v63, v64, v65, v66);
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v103, v77, v28, 0, 1, 1, 1, 0);
      v68 = v68 - v78;
      v28 = (v28 + 1);
    }

    while (v62 != v28);
  }

  v80 = v51 >> 32;
  v81 = (HIDWORD(v51) + 1);
  if (v81 < v100 + 1)
  {
    v82 = v100 - v80;
    do
    {
      objc_msgSend_maximumSize(v20, v63, v64, v65, v66);
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(v103, v83, v81, 0, 1, 1, 1, 0);
      v69 = v69 + v84;
      v81 = (v81 + 1);
      --v82;
    }

    while (v82);
  }

  objc_msgSend_p_layoutOffsetForGridPoint_(self, v63, v76, v65, v66);
  v86 = v61 + v85;
  v88 = v68 + v87;
  v89 = v57 + v85;
  retstr->var0.x = v86;
  retstr->var0.y = v68 + v87;
  v90 = v69 + v87;
  retstr->var1.x = v86;
  retstr->var1.y = v90;
  retstr->var2.x = v89;
  retstr->var2.y = v88;
  retstr->var3.x = v89;
  retstr->var3.y = v90;
  retstr->var4 = v32;
  retstr->var5 = v31;
  retstr->var6 = v60;
  retstr->var7 = v29;

  return result;
}

- (void)p_alignFrameSpec:(id *)a3
{
  var0 = a3->var0;
  v18[0] = var0.x + 1.0;
  v18[1] = var0.y;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, a2, &var0, v18, &a3->var4);
  v17 = a3->var0;
  v16[0] = *&v17.x;
  *&v16[1] = v17.y + 1.0;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, v5, &v17, v16, &a3->var6);
  var1 = a3->var1;
  v14[0] = var1.x + 1.0;
  v14[1] = var1.y;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, v6, &var1, v14, &a3->var5);
  var2 = a3->var2;
  v12[0] = *&var2.x;
  *&v12[1] = var2.y + 1.0;
  objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(self, v7, &var2, v12, &a3->var7);
  x = v17.x;
  y = var0.y;
  a3->var0.x = v17.x;
  a3->var0.y = y;
  v10 = var2.x;
  v11 = var1.y;
  a3->var3.x = var2.x;
  a3->var3.y = v11;
  a3->var1.x = x;
  a3->var1.y = v11;
  a3->var2.x = v10;
  a3->var2.y = y;
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForGridRange:(SEL)a3 strokeWidthOverride:(id)a4
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, a3, *&a4.var0, *&a4.var1, 0, a5);

  return MEMORY[0x2821F9670](self, sel_p_alignFrameSpec_, retstr, v7, v8);
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForRowGridRange:(SEL)a3
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, a3, *&a4.var0, *&a4.var1, 1, 0);

  return MEMORY[0x2821F9670](self, sel_p_alignFrameSpec_, retstr, v6, v7);
}

- ($49C15799EE3625B6AB482F2FFBF0D806)p_alignedFrameSpecForColumnGridRange:(SEL)a3
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  retstr->var2 = 0u;
  retstr->var3 = 0u;
  retstr->var0 = 0u;
  retstr->var1 = 0u;
  objc_msgSend_p_frameSpecForGridRange_frameType_strokeWidthOverride_(self, a3, *&a4.var0, *&a4.var1, 2, 0);

  return MEMORY[0x2821F9670](self, sel_p_alignFrameSpec_, retstr, v6, v7);
}

- (TSTLayoutSpaceBundle)bundle
{
  WeakRetained = objc_loadWeakRetained(&self->_bundle);

  return WeakRetained;
}

- (CGAffineTransform)transformToCanvas
{
  v3 = *&self[9].tx;
  *&retstr->a = *&self[9].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].a;
  return self;
}

- (CGAffineTransform)transformFromCanvas
{
  v3 = *&self[10].tx;
  *&retstr->a = *&self[10].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].a;
  return self;
}

- (void)setTransformFromCanvas:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transformFromCanvas.c = *&a3->c;
  *&self->_transformFromCanvas.tx = v4;
  *&self->_transformFromCanvas.a = v3;
}

- (CGAffineTransform)transformToDevice
{
  v3 = *&self[11].tx;
  *&retstr->a = *&self[11].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].a;
  return self;
}

- (void)setTransformToDevice:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transformToDevice.c = *&a3->c;
  *&self->_transformToDevice.tx = v4;
  *&self->_transformToDevice.a = v3;
}

- (CGAffineTransform)transformFromDevice
{
  v3 = *&self[12].tx;
  *&retstr->a = *&self[12].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].a;
  return self;
}

- (void)setTransformFromDevice:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transformFromDevice.c = *&a3->c;
  *&self->_transformFromDevice.tx = v4;
  *&self->_transformFromDevice.a = v3;
}

- (CGPoint)tableOffset
{
  x = self->_tableOffset.x;
  y = self->_tableOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($D854FC4CDD8DDEA9B2859E823A7C8A75)gridRange
{
  bottomRight = self->_gridRange.bottomRight;
  topLeft = self->_gridRange.topLeft;
  result.var1 = bottomRight;
  result.var0 = topLeft;
  return result;
}

- (CGRect)cachedFrame
{
  x = self->_cachedFrame.origin.x;
  y = self->_cachedFrame.origin.y;
  width = self->_cachedFrame.size.width;
  height = self->_cachedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedAlignedFrame
{
  x = self->_cachedAlignedFrame.origin.x;
  y = self->_cachedAlignedFrame.origin.y;
  width = self->_cachedAlignedFrame.size.width;
  height = self->_cachedAlignedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedStrokeFrame
{
  x = self->_cachedStrokeFrame.origin.x;
  y = self->_cachedStrokeFrame.origin.y;
  width = self->_cachedStrokeFrame.size.width;
  height = self->_cachedStrokeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedAlignedStrokeFrame
{
  x = self->_cachedAlignedStrokeFrame.origin.x;
  y = self->_cachedAlignedStrokeFrame.origin.y;
  width = self->_cachedAlignedStrokeFrame.size.width;
  height = self->_cachedAlignedStrokeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end