@interface TSTTablePartitioner
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)measureCellRangeForNextPartitionOfSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally;
- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally delta:(int)delta;
- (BOOL)p_didFinishPartitioningHint:(id)hint horizontally:(BOOL)horizontally;
- (CGSize)scaleToFit;
- (TSTLayout)scaledLayout;
- (TSTTablePartitioner)initWithInfo:(id)info;
- (id)hintCacheKeyForHint:(id)hint;
- (id)hintForLayout:(id)layout;
- (id)layoutForHint:(id)hint parentLayout:(id)layout;
- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished;
- (id)partitioningPassForFirstPartitionSize:(CGSize)size;
- (id)partitioningPassForHint:(id)hint withPreviousHint:(id)previousHint;
- (void)dealloc;
- (void)p_flushCacheAfterPartitioningFinished:(id)finished lastHint:(id)hint horizontally:(BOOL)horizontally;
- (void)validateScaledLayout;
@end

@implementation TSTTablePartitioner

- (TSTTablePartitioner)initWithInfo:(id)info
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner initWithInfo:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 56, @"Incorrect info class in the table partitioner!"}];
  }

  v15.receiver = self;
  v15.super_class = TSTTablePartitioner;
  v7 = [(TSTTablePartitioner *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->mTableInfo = v4;
    v7->mFirstPartitionWidth = -1.0;
    if ([(TSDDrawableInfo *)v4 isInlineWithText])
    {
      _Q0 = *MEMORY[0x277CBF3A8];
    }

    else
    {
      __asm { FMOV            V0.2D, #1.0 }
    }

    v8->mScaleToFit = _Q0;
    v8->mHintMatricesByCanvas = objc_alloc_init(MEMORY[0x277D6C348]);
    v8->mPartitioningPassCache = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8->mScaledLayout = 0;
    [(TSTTablePartitioner *)v8 setInfoGeometry:[(TSDDrawableInfo *)v4 geometry]];
  }

  return v8;
}

- (void)dealloc
{
  [-[TSUPointerKeyDictionary allValues](self->mHintMatricesByCanvas "allValues")];
  [(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas removeAllObjects];

  self->mHintMatricesByCanvas = 0;
  self->mPartitioningPassCache = 0;
  self->mTableInfo = 0;

  self->mScaledLayout = 0;
  self->mInfoGeometry = 0;
  v3.receiver = self;
  v3.super_class = TSTTablePartitioner;
  [(TSTTablePartitioner *)&v3 dealloc];
}

- (void)validateScaledLayout
{
  masterLayout = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  [(TSTMasterLayout *)masterLayout maximumPartitionSize];
  v5 = v4;
  v7 = v6;
  [(TSTMasterLayout *)masterLayout setMaximumPartitionSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(TSTLayout *)[(TSTTablePartitioner *)self scaledLayout] validate];

  [(TSTMasterLayout *)masterLayout setMaximumPartitionSize:v5, v7];
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)measureCellRangeForNextPartitionOfSize:(CGSize)size previousHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  scaledLayout = [(TSTTablePartitioner *)self scaledLayout];
  masterLayout = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  isInlineWithText = [(TSDDrawableInfo *)[(TSTTablePartitioner *)self tableInfo] isInlineWithText];
  [(TSTTablePartitioner *)self validateScaledLayout];
  if (!hint)
  {
    LODWORD(v19) = 0;
    LOWORD(range1_8) = 0;
    LOBYTE(v16) = 0;
    cellRange3 = 0;
    goto LABEL_14;
  }

  cellRange = [hint cellRange];
  if (cellRange == 0xFFFF || (cellRange & 0xFF0000) == 0xFF0000 || !HIWORD(cellRange) || (cellRange & 0xFFFF00000000) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner measureCellRangeForNextPartitionOfSize:previousHint:horizontally:]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 114, @"Partitioner can't continue from an invalid range."}];
  }

  cellRange2 = [hint cellRange];
  if (!horizontallyCopy)
  {
    cellRange3 = HIWORD(cellRange2) + cellRange2;
    v16 = [hint cellRange] >> 16;
    [hint maximumSize];
    if (width == v20)
    {
      LODWORD(v19) = 0;
      range1_8 = [hint cellRange] >> 32;
      goto LABEL_14;
    }

LABEL_13:
    LODWORD(v19) = 0;
    LOWORD(range1_8) = 0;
    goto LABEL_14;
  }

  LODWORD(v16) = HIDWORD(cellRange2) + WORD1(cellRange2);
  cellRange3 = [hint cellRange];
  [hint maximumSize];
  if (height != v18)
  {
    goto LABEL_13;
  }

  LOWORD(range1_8) = 0;
  v19 = [hint cellRange] >> 48;
LABEL_14:
  Range = TSTMasterLayoutGetRange(masterLayout);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(masterLayout);
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(masterLayout);
  range1 = TSTMasterLayoutGetTableNumberOfHeaderRows(masterLayout);
  TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns(masterLayout);
  v61 = TableNumberOfRows;
  TableNumberOfFooterRows = TSTMasterLayoutGetTableNumberOfFooterRows(masterLayout);
  v66 = TableNumberOfRows;
  repeatingHeaderRowsEnabled = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] repeatingHeaderRowsEnabled];
  repeatingHeaderColumnsEnabled = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] repeatingHeaderColumnsEnabled];
  if (repeatingHeaderRowsEnabled && cellRange3)
  {
    if (TableNumberOfColumns >= 0xFF)
    {
      v26 = 255;
    }

    else
    {
      v26 = TableNumberOfColumns;
    }

    TSTLayoutGetStrokeFrameForRange(scaledLayout, (v26 << 32) | (range1 << 48));
    height = height - v27;
  }

  if (v16)
  {
    v28 = repeatingHeaderColumnsEnabled;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    if (TableNumberOfHeaderColumns >= 0xFF)
    {
      v29 = 255;
    }

    else
    {
      v29 = TableNumberOfHeaderColumns;
    }

    TSTLayoutGetStrokeFrameForRange(scaledLayout, (v66 << 48) | (v29 << 32));
    width = width - v30;
  }

  TSTLayoutGetTableNameHeight(scaledLayout);
  if (!cellRange3)
  {
    v32 = v31;
    if (TSTLayoutGetTableNameVisible(scaledLayout))
    {
      height = height - v32;
    }
  }

  if (width > 0.0)
  {
    v33 = width;
  }

  else
  {
    v33 = 0.0;
  }

  if (height <= 0.0)
  {
    height = 0.0;
  }

  CanvasStrokeFrameForRange = TSTLayoutGetCanvasStrokeFrameForRange(scaledLayout, cellRange3 | (v16 << 16) | 0x1000100000000);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v33 + CanvasStrokeFrameForRange;
  v42 = height + v35;
  CellIDHitByCanvasPoint = TSTLayoutGetCellIDHitByCanvasPoint(scaledLayout, v41, v42);
  v44 = CellIDHitByCanvasPoint;
  v45 = HIWORD(CellIDHitByCanvasPoint);
  v70.origin.x = CanvasStrokeFrameForRange;
  v70.origin.y = v36;
  v70.size.width = v38;
  v70.size.height = v40;
  if (CGRectGetMinX(v70) <= v41)
  {
    v71.origin.x = CanvasStrokeFrameForRange;
    v71.origin.y = v36;
    v71.size.width = v38;
    v71.size.height = v40;
    if (CGRectGetMaxX(v71) >= v41)
    {
      LOBYTE(v45) = v16;
    }
  }

  v72.origin.x = CanvasStrokeFrameForRange;
  v72.origin.y = v36;
  v72.size.width = v38;
  v72.size.height = v40;
  if (CGRectGetMinY(v72) <= v42)
  {
    v73.origin.x = CanvasStrokeFrameForRange;
    v73.origin.y = v36;
    v73.size.width = v38;
    v73.size.height = v40;
    if (CGRectGetMaxY(v73) >= v42)
    {
      v44 = cellRange3;
    }
  }

  v46 = v44;
  if (cellRange3 > v44)
  {
    v46 = cellRange3;
  }

  if (v16 <= v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = v16;
  }

  if (v46 == 0xFFFF)
  {
    v19 = (v66 - cellRange3);
  }

  else
  {
    v19 = v19;
  }

  if (v47 == 255)
  {
    v48 = TableNumberOfColumns - v16;
  }

  else
  {
    v48 = range1_8;
  }

  if (!v19)
  {
    v49 = v61 + ~TableNumberOfFooterRows;
    v50 = v46 - cellRange3;
    if (cellRange3 >= v44)
    {
      v50 = 1;
    }

    if ((v50 - 1) < range1 && cellRange3 == 0)
    {
      v19 = (range1 + 1);
    }

    else
    {
      v19 = v50;
    }

    if ((cellRange3 + v19 - 1) >= v49 && (Range + HIWORD(Range) - 1) != (cellRange3 + v19 - 1))
    {
      v68.location = range1;
      v68.length = v66 - (TableNumberOfFooterRows + range1);
      v69.location = cellRange3;
      v69.length = v19;
      if (NSIntersectionRange(v68, v69).length < 2)
      {
        v19 = HIWORD(Range) - cellRange3;
      }

      else
      {
        v19 = v49 - cellRange3;
      }
    }
  }

  if (isInlineWithText)
  {
    numberOfColumns = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] numberOfColumns];
    v53 = 0;
  }

  else
  {
    v54 = v47 - v16;
    if (!v54)
    {
      v54 = 1;
    }

    if (TableNumberOfHeaderColumns > (v54 - 1))
    {
      v55 = TableNumberOfHeaderColumns + 1;
    }

    else
    {
      v55 = v54;
    }

    if (v16)
    {
      v56 = v16;
    }

    else
    {
      v54 = v55;
      v56 = 0;
    }

    if (v48)
    {
      numberOfColumns = v48;
    }

    else
    {
      numberOfColumns = v54;
    }

    if (v48)
    {
      v53 = v16;
    }

    else
    {
      v53 = v56;
    }
  }

  if (cellRange3 == 0xFFFF || v53 == 0xFF || !v19 || !numberOfColumns)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner measureCellRangeForNextPartitionOfSize:previousHint:horizontally:]"];
    [currentHandler2 handleFailureInFunction:v58 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 262, @"Partitioner measured an invalid range."}];
  }

  return (cellRange3 | (v53 << 16) | (v19 << 48) | (numberOfColumns << 32));
}

- (id)nextHintForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  objc_opt_class();
  v14 = TSUDynamicCast();
  v15 = v14;
  if (hint && !v14)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]"];
    [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 269, @"previousHint must be nil, or of type TSTLayoutHint."}];
  }

  if ([v15 layout] && objc_msgSend(objc_msgSend(v15, "layout"), "info") != self->mTableInfo)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]"];
    [currentHandler2 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 270, @"Hint is for the wrong table info."}];
  }

  if (v15)
  {
    if ([(TSTTablePartitioner *)self p_didFinishPartitioningHint:v15 horizontally:horizontallyCopy])
    {
      return 0;
    }

    cacheHintID = [v15 cacheHintID];
    v21 = HIBYTE(cacheHintID);
    if (horizontallyCopy)
    {
      v22 = BYTE2(cacheHintID) + 1;
    }

    else
    {
      v22 = BYTE2(cacheHintID);
    }

    if (horizontallyCopy)
    {
      v23 = cacheHintID;
    }

    else
    {
      v23 = cacheHintID + 1;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  null = [objc_msgSend(objc_msgSend(layout "rootLayout")];
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  if (![(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas objectForKey:null])
  {
    [(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas setObject:objc_alloc_init(MEMORY[0x277CBEB38]) forUncopiedKey:null];
  }

  v20 = objc_alloc_init(TSTLayoutHint);
  masterLayout = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  [(TSTMasterLayout *)masterLayout maximumPartitionSize];
  [(TSTMasterLayout *)masterLayout setMaximumPartitionSize:TSDSizeWithMaxArea(v27, v28, width, height)];
  [(TSTTablePartitioner *)self scaleToFit];
  v31 = *MEMORY[0x277CBF3A8];
  v30 = *(MEMORY[0x277CBF3A8] + 8);
  if (*MEMORY[0x277CBF3A8] == v32 && v30 == v29 && ![(TSDDrawableInfo *)self->mTableInfo isInlineWithText])
  {
    [(TSTTablePartitioner *)self setScaleToFit:1.0, 1.0];
  }

  else if ([(TSDDrawableInfo *)self->mTableInfo isInlineWithText])
  {
    if (self->mFirstPartitionWidth != width && !(v23 | (v22 << 16)) || ([(TSTTablePartitioner *)self scaleToFit], v34 == v31) && v33 == v30 || ([(TSDInfoGeometry *)[(TSTTablePartitioner *)self infoGeometry] size], v58 = v57, v60 = v59, [(TSDInfoGeometry *)[(TSDDrawableInfo *)[(TSTTablePartitioner *)self tableInfo] geometry] size], v58 != v62) || v60 != v61)
    {
      [(TSTLayout *)[(TSTTablePartitioner *)self scaledLayout] scaleToFit];
      if (v36 != 1.0 || v35 != 1.0 || ([(TSDInfoGeometry *)[(TSTTablePartitioner *)self infoGeometry] size], v38 = v37, v40 = v39, [(TSDInfoGeometry *)[(TSDDrawableInfo *)[(TSTTablePartitioner *)self tableInfo] geometry] size], v38 != v42) || v40 != v41)
      {
        v43 = v21;
        scaledLayout = [(TSTTablePartitioner *)self scaledLayout];
        range = [(TSTTableModel *)[(TSTTableInfo *)self->mTableInfo tableModel] range];
        v46 = scaledLayout;
        v21 = v43;
        (TSTLayoutInvalidateCellRange)(v46, range);
      }

      [(TSTTablePartitioner *)self setScaleToFit:1.0, 1.0];
      [(TSTTablePartitioner *)self validateScaledLayout];
      [(TSTLayout *)[(TSTTablePartitioner *)self scaledLayout] computeLayoutGeometry];
      StrokeFrame = TSTLayoutGetStrokeFrame([(TSTTablePartitioner *)self scaledLayout]);
      v49 = v48;
      [(TSTLayout *)[(TSTTablePartitioner *)self scaledLayout] alignmentFrame];
      v51 = width - (v50 - v49);
      v52 = 1.0;
      if (v49 > v51)
      {
        v52 = v51 / v49;
      }

      [(TSTTablePartitioner *)self setScaleToFit:v52, 1.0];
      self->mFirstPartitionWidth = width;
      [(TSTTablePartitioner *)self scaleToFit];
      [(TSTLayout *)[(TSTTablePartitioner *)self scaledLayout] setScaleToFit:v53, v54];
      [(TSTTablePartitioner *)self scaleToFit];
      if (v56 != 1.0 || v55 != 1.0)
      {
        [(TSTMasterLayout *)masterLayout addChangeDescriptor:[TSTChangeDescriptor changeDescriptorWithType:33 cellRange:[(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] range]]];
        TSTLayoutInvalidateCellRange([(TSTTablePartitioner *)self scaledLayout], [(TSTTableModel *)[(TSTTableInfo *)self->mTableInfo tableModel] range]);
      }
    }
  }

  height = [(TSTTablePartitioner *)self measureCellRangeForNextPartitionOfSize:v15 previousHint:horizontallyCopy horizontally:width, height];
  [(TSTTablePartitioner *)self setInfoGeometry:[(TSDDrawableInfo *)self->mTableInfo geometry]];
  [(TSTLayoutHint *)v20 setCacheHintID:(v21 << 24) | (v22 << 16) | v23];
  [(TSTLayoutHint *)v20 setCellRange:height];
  [(TSTLayoutHint *)v20 setMaximumSize:width, height];
  [(TSTLayoutHint *)v20 setHorizontal:horizontallyCopy];
  [(TSTLayoutHint *)v20 setPartitioningPass:[(TSTTablePartitioner *)self partitioningPassForHint:v20 withPreviousHint:v15]];
  if (finished)
  {
    *finished = [(TSTTablePartitioner *)self p_didFinishPartitioningHint:v20 horizontally:horizontallyCopy];
  }

  return v20;
}

- (id)nextLayoutForSize:(CGSize)size parentLayout:(id)layout previousHint:(id)hint horizontally:(BOOL)horizontally outFinished:(BOOL *)finished
{
  result = [(TSTTablePartitioner *)self nextHintForSize:layout parentLayout:hint previousHint:horizontally horizontally:finished outFinished:size.width, size.height];
  if (result)
  {

    return [(TSTTablePartitioner *)self layoutForHint:result parentLayout:layout];
  }

  return result;
}

- (id)layoutForHint:(id)hint parentLayout:(id)layout
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  null = [objc_msgSend(objc_msgSend(layout "rootLayout")];
  if (!null)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10 = [(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas objectForKey:null];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas setObject:v10 forUncopiedKey:null];
  }

  v11 = [v10 objectForKey:{-[TSTTablePartitioner hintCacheKeyForHint:](self, "hintCacheKeyForHint:", hint)}];
  layout = [v11 layout];
  v13 = layout;
  if (v11)
  {
    cellRange = [v11 cellRange];
    cellRange2 = [v8 cellRange];
    if (v13)
    {
      [v13 scaleToFit];
      v17 = v16;
      v19 = v18;
      [v8 maximumSize];
      if ([(TSTTablePartitioner *)self shouldReuseLayout:v13 forSize:layout parentLayout:v8 hint:?])
      {
        v20 = 1;
        goto LABEL_18;
      }

      [v8 setLayout:0];
      goto LABEL_17;
    }

    v17 = 1.0;
  }

  else
  {
    v17 = 1.0;
    cellRange2 = 0xFFFFFFLL;
    if (layout)
    {
      v20 = 0;
      cellRange = 0xFFFFFFLL;
      v19 = 1.0;
      goto LABEL_18;
    }

    cellRange = 0xFFFFFFLL;
  }

  v19 = 1.0;
LABEL_17:
  v13 = [objc_alloc(-[TSTTableInfo layoutClass](-[TSTTablePartitioner tableInfo](self "tableInfo")];
  v20 = 0;
LABEL_18:
  [v8 setLayout:v13];
  [v13 setLayoutHint:v8];
  TSTLayoutSetPartitionRange(v13);
  [v8 setIsValid:1];
  if (!v20)
  {
    goto LABEL_35;
  }

  isInlineWithText = [(TSDDrawableInfo *)[(TSTTablePartitioner *)self tableInfo] isInlineWithText];
  [(TSTTablePartitioner *)self scaleToFit];
  if (v23 == v17 && v22 == v19)
  {
    if (((cellRange ^ cellRange2) & 0xFFFFFFFF00FFFFFFLL) == 0)
    {
      goto LABEL_33;
    }

    if (BYTE2(cellRange2) < BYTE2(cellRange))
    {
      TSTLayoutInvalidateColumns(v13);
      isInlineWithText = 1;
    }

    if ((BYTE4(cellRange2) + BYTE2(cellRange2) - 1) > (BYTE4(cellRange) + BYTE2(cellRange) - 1))
    {
      TSTLayoutInvalidateColumns(v13);
      isInlineWithText = 1;
    }

    if (cellRange2 < cellRange)
    {
      TSTLayoutInvalidateRows(v13);
      isInlineWithText = 1;
    }

    if ((cellRange2 + HIWORD(cellRange2) - 1) > (cellRange - 1 + HIWORD(cellRange)))
    {
      TSTLayoutInvalidateRows(v13);
      isInlineWithText = 1;
    }

    containedTextEditingLayout = [v13 containedTextEditingLayout];
    if (containedTextEditingLayout)
    {
      v25 = containedTextEditingLayout;
      [containedTextEditingLayout invalidateTextLayout];
      [v13 invalidateForAutosizingTextLayout:v25];
    }

    else
    {
LABEL_33:
      if (!isInlineWithText)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    TSTLayoutInvalidateCellRange(v13, [v8 cellRange]);
  }

  TSTLayoutInvalidateLayoutSpaceCoordinates(v13);
  TSTLayoutInvalidateLayoutSpaceTableOffsets(v13);
  [v13 invalidateSize];
  [v13 setNeedsDisplay];
LABEL_35:
  [v10 setObject:v8 forKey:{-[TSTTablePartitioner hintCacheKeyForHint:](self, "hintCacheKeyForHint:", v8)}];
  if (-[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:](self, "p_didFinishPartitioningHint:horizontally:", v8, [v8 horizontal]))
  {
    -[TSTTablePartitioner p_flushCacheAfterPartitioningFinished:lastHint:horizontally:](self, "p_flushCacheAfterPartitioningFinished:lastHint:horizontally:", v10, v8, [v8 horizontal]);
  }

  return v13;
}

- (BOOL)didHint:(id)hint syncWithNextHint:(id)nextHint horizontally:(BOOL)horizontally delta:(int)delta
{
  horizontallyCopy = horizontally;
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = [objc_msgSend(v7 "layout")];
  if (v11 != [objc_msgSend(v10 "layout")])
  {
    return 0;
  }

  cellRange = [v7 cellRange];
  if (horizontallyCopy)
  {
    if ((BYTE4(cellRange) + BYTE2(cellRange) - 1) + 1 == ([v10 cellRange] >> 16))
    {
      cellRange2 = [v7 cellRange];
      if (cellRange2 == [v10 cellRange])
      {
        cellRange3 = [v7 cellRange];
        v16 = (cellRange3 + HIWORD(cellRange3));
        cellRange4 = [v10 cellRange];
        return v16 == (cellRange4 + HIWORD(cellRange4));
      }
    }

    return 0;
  }

  if ((cellRange + HIWORD(cellRange) - 1) + 1 != [v10 cellRange])
  {
    return 0;
  }

  v19 = ([v7 cellRange] >> 16);
  if (v19 != ([v10 cellRange] >> 16))
  {
    return 0;
  }

  cellRange5 = [v7 cellRange];
  v21 = (BYTE4(cellRange5) + BYTE2(cellRange5));
  cellRange6 = [v10 cellRange];
  return v21 == (BYTE4(cellRange6) + BYTE2(cellRange6));
}

- (BOOL)p_didFinishPartitioningHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  masterLayout = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  if (!hint)
  {
    return 0;
  }

  v7 = masterLayout;
  Range = TSTMasterLayoutGetRange(masterLayout);
  RangeForHint = TSTMasterLayoutGetRangeForHint(v7, hint);
  if (horizontallyCopy)
  {
    v10 = (BYTE4(Range) + BYTE2(Range) - 1);
    v11 = (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1);
    if (v10 < v11)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]"];
      [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 548, @"Horizontal partitioning went beyond the table bounds!"}];
    }

    v14 = v10 > v11;
  }

  else
  {
    v16 = (Range + HIWORD(Range) - 1);
    v17 = RangeForHint + HIWORD(RangeForHint) - 1;
    if (v16 < (RangeForHint + HIWORD(RangeForHint) - 1))
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]"];
      [currentHandler2 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 551, @"Vertical partitioning went beyond the table bounds!"}];
    }

    v14 = v16 > v17;
  }

  return !v14;
}

- (id)hintForLayout:(id)layout
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {

    return [result layoutHint];
  }

  return result;
}

- (TSTLayout)scaledLayout
{
  result = self->mScaledLayout;
  if (!result)
  {
    result = [objc_alloc(-[TSTTableInfo layoutClass](-[TSTTablePartitioner tableInfo](self "tableInfo")];
    self->mScaledLayout = result;
  }

  return result;
}

- (id)partitioningPassForFirstPartitionSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width == *MEMORY[0x277CBF3A8] && size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner partitioningPassForFirstPartitionSize:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 599, @"partitioningPassForFirstPartitionSize: Invalid partition size"}];
  }

  v11.width = width;
  v11.height = height;
  v9 = [(NSMutableDictionary *)self->mPartitioningPassCache objectForKey:NSStringFromCGSize(v11)];
  if (!v9)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:random()];
    v12.width = width;
    v12.height = height;
    [(NSMutableDictionary *)self->mPartitioningPassCache setObject:v9 forKey:NSStringFromCGSize(v12)];
  }

  return v9;
}

- (id)partitioningPassForHint:(id)hint withPreviousHint:(id)previousHint
{
  cacheHintID = [hint cacheHintID];
  if (previousHint && (cacheHintID & 0xFFFFFF) != 0)
  {
    if ([previousHint partitioningPass])
    {

      return [previousHint partitioningPass];
    }

    else
    {
      v9 = MEMORY[0x277CCABB0];

      return [v9 numberWithUnsignedInt:0];
    }
  }

  else
  {
    [hint maximumSize];

    return [(TSTTablePartitioner *)self partitioningPassForFirstPartitionSize:?];
  }
}

- (id)hintCacheKeyForHint:(id)hint
{
  partitioningPass = [hint partitioningPass];
  cacheHintID = [hint cacheHintID];

  return [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:partitioningPass andHintID:cacheHintID];
}

- (void)p_flushCacheAfterPartitioningFinished:(id)finished lastHint:(id)hint horizontally:(BOOL)horizontally
{
  horizontallyCopy = horizontally;
  if (!finished)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner p_flushCacheAfterPartitioningFinished:lastHint:horizontally:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 636, @"invalid nil value for '%s'", "cache"}];
  }

  cacheHintID = [hint cacheHintID];
  v12 = cacheHintID & 0xFF000000;
  partitioningPass = [hint partitioningPass];
  if (horizontallyCopy)
  {
    v14 = HIWORD(cacheHintID) + 1;
  }

  else
  {
    v14 = 0;
  }

  if (horizontallyCopy)
  {
    v15 = 0;
  }

  else
  {
    v15 = cacheHintID + 1;
  }

  v16 = [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:partitioningPass andHintID:v15 | (v14 << 16) | v12];
  if ([finished objectForKey:v16])
  {
    while (1)
    {
      if ((~[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] editingCellID]& 0xFFFFFF) == 0)
      {
        [finished removeObjectForKey:v16];
      }

      v14 += horizontallyCopy ^ 1;
      v15 += horizontallyCopy;
      v5 = v5 & 0xFFFFFFFF00000000 | v15 | (v14 << 16) | v12;
      v16 = [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:partitioningPass andHintID:v5];
      if (![finished objectForKey:v16])
      {
        if (horizontallyCopy)
        {
          ++v14;
        }

        else
        {
          v14 = 0;
        }

        if (horizontallyCopy)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        v17 = v17 & 0xFFFFFFFF00000000 | v15 | (v14 << 16) | v12;
        v16 = [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:partitioningPass andHintID:?];
        if (![finished objectForKey:v16])
        {
          break;
        }
      }
    }
  }
}

- (CGSize)scaleToFit
{
  width = self->mScaleToFit.width;
  height = self->mScaleToFit.height;
  result.height = height;
  result.width = width;
  return result;
}

@end