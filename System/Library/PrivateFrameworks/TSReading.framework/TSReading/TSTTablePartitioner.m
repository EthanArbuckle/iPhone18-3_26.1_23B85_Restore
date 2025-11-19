@interface TSTTablePartitioner
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)measureCellRangeForNextPartitionOfSize:(CGSize)a3 previousHint:(id)a4 horizontally:(BOOL)a5;
- (BOOL)didHint:(id)a3 syncWithNextHint:(id)a4 horizontally:(BOOL)a5 delta:(int)a6;
- (BOOL)p_didFinishPartitioningHint:(id)a3 horizontally:(BOOL)a4;
- (CGSize)scaleToFit;
- (TSTLayout)scaledLayout;
- (TSTTablePartitioner)initWithInfo:(id)a3;
- (id)hintCacheKeyForHint:(id)a3;
- (id)hintForLayout:(id)a3;
- (id)layoutForHint:(id)a3 parentLayout:(id)a4;
- (id)nextHintForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7;
- (id)nextLayoutForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7;
- (id)partitioningPassForFirstPartitionSize:(CGSize)a3;
- (id)partitioningPassForHint:(id)a3 withPreviousHint:(id)a4;
- (void)dealloc;
- (void)p_flushCacheAfterPartitioningFinished:(id)a3 lastHint:(id)a4 horizontally:(BOOL)a5;
- (void)validateScaledLayout;
@end

@implementation TSTTablePartitioner

- (TSTTablePartitioner)initWithInfo:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner initWithInfo:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 56, @"Incorrect info class in the table partitioner!"}];
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
  v3 = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  [(TSTMasterLayout *)v3 maximumPartitionSize];
  v5 = v4;
  v7 = v6;
  [(TSTMasterLayout *)v3 setMaximumPartitionSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(TSTLayout *)[(TSTTablePartitioner *)self scaledLayout] validate];

  [(TSTMasterLayout *)v3 setMaximumPartitionSize:v5, v7];
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)measureCellRangeForNextPartitionOfSize:(CGSize)a3 previousHint:(id)a4 horizontally:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v10 = [(TSTTablePartitioner *)self scaledLayout];
  v11 = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  v65 = [(TSDDrawableInfo *)[(TSTTablePartitioner *)self tableInfo] isInlineWithText];
  [(TSTTablePartitioner *)self validateScaledLayout];
  if (!a4)
  {
    LODWORD(v19) = 0;
    LOWORD(range1_8) = 0;
    LOBYTE(v16) = 0;
    v17 = 0;
    goto LABEL_14;
  }

  v12 = [a4 cellRange];
  if (v12 == 0xFFFF || (v12 & 0xFF0000) == 0xFF0000 || !HIWORD(v12) || (v12 & 0xFFFF00000000) == 0)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner measureCellRangeForNextPartitionOfSize:previousHint:horizontally:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 114, @"Partitioner can't continue from an invalid range."}];
  }

  v15 = [a4 cellRange];
  if (!v5)
  {
    v17 = HIWORD(v15) + v15;
    v16 = [a4 cellRange] >> 16;
    [a4 maximumSize];
    if (width == v20)
    {
      LODWORD(v19) = 0;
      range1_8 = [a4 cellRange] >> 32;
      goto LABEL_14;
    }

LABEL_13:
    LODWORD(v19) = 0;
    LOWORD(range1_8) = 0;
    goto LABEL_14;
  }

  LODWORD(v16) = HIDWORD(v15) + WORD1(v15);
  v17 = [a4 cellRange];
  [a4 maximumSize];
  if (height != v18)
  {
    goto LABEL_13;
  }

  LOWORD(range1_8) = 0;
  v19 = [a4 cellRange] >> 48;
LABEL_14:
  Range = TSTMasterLayoutGetRange(v11);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(v11);
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(v11);
  range1 = TSTMasterLayoutGetTableNumberOfHeaderRows(v11);
  TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns(v11);
  v61 = TableNumberOfRows;
  TableNumberOfFooterRows = TSTMasterLayoutGetTableNumberOfFooterRows(v11);
  v66 = TableNumberOfRows;
  v24 = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] repeatingHeaderRowsEnabled];
  v25 = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] repeatingHeaderColumnsEnabled];
  if (v24 && v17)
  {
    if (TableNumberOfColumns >= 0xFF)
    {
      v26 = 255;
    }

    else
    {
      v26 = TableNumberOfColumns;
    }

    TSTLayoutGetStrokeFrameForRange(v10, (v26 << 32) | (range1 << 48));
    height = height - v27;
  }

  if (v16)
  {
    v28 = v25;
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

    TSTLayoutGetStrokeFrameForRange(v10, (v66 << 48) | (v29 << 32));
    width = width - v30;
  }

  TSTLayoutGetTableNameHeight(v10);
  if (!v17)
  {
    v32 = v31;
    if (TSTLayoutGetTableNameVisible(v10))
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

  CanvasStrokeFrameForRange = TSTLayoutGetCanvasStrokeFrameForRange(v10, v17 | (v16 << 16) | 0x1000100000000);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v33 + CanvasStrokeFrameForRange;
  v42 = height + v35;
  CellIDHitByCanvasPoint = TSTLayoutGetCellIDHitByCanvasPoint(v10, v41, v42);
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
      v44 = v17;
    }
  }

  v46 = v44;
  if (v17 > v44)
  {
    v46 = v17;
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
    v19 = (v66 - v17);
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
    v50 = v46 - v17;
    if (v17 >= v44)
    {
      v50 = 1;
    }

    if ((v50 - 1) < range1 && v17 == 0)
    {
      v19 = (range1 + 1);
    }

    else
    {
      v19 = v50;
    }

    if ((v17 + v19 - 1) >= v49 && (Range + HIWORD(Range) - 1) != (v17 + v19 - 1))
    {
      v68.location = range1;
      v68.length = v66 - (TableNumberOfFooterRows + range1);
      v69.location = v17;
      v69.length = v19;
      if (NSIntersectionRange(v68, v69).length < 2)
      {
        v19 = HIWORD(Range) - v17;
      }

      else
      {
        v19 = v49 - v17;
      }
    }
  }

  if (v65)
  {
    v52 = [(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] numberOfColumns];
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
      v52 = v48;
    }

    else
    {
      v52 = v54;
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

  if (v17 == 0xFFFF || v53 == 0xFF || !v19 || !v52)
  {
    v57 = [MEMORY[0x277D6C290] currentHandler];
    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner measureCellRangeForNextPartitionOfSize:previousHint:horizontally:]"];
    [v57 handleFailureInFunction:v58 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 262, @"Partitioner measured an invalid range."}];
  }

  return (v17 | (v53 << 16) | (v19 << 48) | (v52 << 32));
}

- (id)nextHintForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7
{
  v8 = a6;
  height = a3.height;
  width = a3.width;
  objc_opt_class();
  v14 = TSUDynamicCast();
  v15 = v14;
  if (a5 && !v14)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 269, @"previousHint must be nil, or of type TSTLayoutHint."}];
  }

  if ([v15 layout] && objc_msgSend(objc_msgSend(v15, "layout"), "info") != self->mTableInfo)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner nextHintForSize:parentLayout:previousHint:horizontally:outFinished:]"];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 270, @"Hint is for the wrong table info."}];
  }

  if (v15)
  {
    if ([(TSTTablePartitioner *)self p_didFinishPartitioningHint:v15 horizontally:v8])
    {
      return 0;
    }

    v24 = [v15 cacheHintID];
    v21 = HIBYTE(v24);
    if (v8)
    {
      v22 = BYTE2(v24) + 1;
    }

    else
    {
      v22 = BYTE2(v24);
    }

    if (v8)
    {
      v23 = v24;
    }

    else
    {
      v23 = v24 + 1;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v25 = [objc_msgSend(objc_msgSend(a4 "rootLayout")];
  if (!v25)
  {
    v25 = [MEMORY[0x277CBEB68] null];
  }

  if (![(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas objectForKey:v25])
  {
    [(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas setObject:objc_alloc_init(MEMORY[0x277CBEB38]) forUncopiedKey:v25];
  }

  v20 = objc_alloc_init(TSTLayoutHint);
  v26 = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  [(TSTMasterLayout *)v26 maximumPartitionSize];
  [(TSTMasterLayout *)v26 setMaximumPartitionSize:TSDSizeWithMaxArea(v27, v28, width, height)];
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
        v44 = [(TSTTablePartitioner *)self scaledLayout];
        v45 = [(TSTTableModel *)[(TSTTableInfo *)self->mTableInfo tableModel] range];
        v46 = v44;
        v21 = v43;
        (TSTLayoutInvalidateCellRange)(v46, v45);
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
        [(TSTMasterLayout *)v26 addChangeDescriptor:[TSTChangeDescriptor changeDescriptorWithType:33 cellRange:[(TSTTableModel *)[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] tableModel] range]]];
        TSTLayoutInvalidateCellRange([(TSTTablePartitioner *)self scaledLayout], [(TSTTableModel *)[(TSTTableInfo *)self->mTableInfo tableModel] range]);
      }
    }
  }

  v63 = [(TSTTablePartitioner *)self measureCellRangeForNextPartitionOfSize:v15 previousHint:v8 horizontally:width, height];
  [(TSTTablePartitioner *)self setInfoGeometry:[(TSDDrawableInfo *)self->mTableInfo geometry]];
  [(TSTLayoutHint *)v20 setCacheHintID:(v21 << 24) | (v22 << 16) | v23];
  [(TSTLayoutHint *)v20 setCellRange:v63];
  [(TSTLayoutHint *)v20 setMaximumSize:width, height];
  [(TSTLayoutHint *)v20 setHorizontal:v8];
  [(TSTLayoutHint *)v20 setPartitioningPass:[(TSTTablePartitioner *)self partitioningPassForHint:v20 withPreviousHint:v15]];
  if (a7)
  {
    *a7 = [(TSTTablePartitioner *)self p_didFinishPartitioningHint:v20 horizontally:v8];
  }

  return v20;
}

- (id)nextLayoutForSize:(CGSize)a3 parentLayout:(id)a4 previousHint:(id)a5 horizontally:(BOOL)a6 outFinished:(BOOL *)a7
{
  result = [(TSTTablePartitioner *)self nextHintForSize:a4 parentLayout:a5 previousHint:a6 horizontally:a7 outFinished:a3.width, a3.height];
  if (result)
  {

    return [(TSTTablePartitioner *)self layoutForHint:result parentLayout:a4];
  }

  return result;
}

- (id)layoutForHint:(id)a3 parentLayout:(id)a4
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [objc_msgSend(objc_msgSend(a4 "rootLayout")];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v10 = [(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas objectForKey:v9];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(TSUPointerKeyDictionary *)self->mHintMatricesByCanvas setObject:v10 forUncopiedKey:v9];
  }

  v11 = [v10 objectForKey:{-[TSTTablePartitioner hintCacheKeyForHint:](self, "hintCacheKeyForHint:", a3)}];
  v12 = [v11 layout];
  v13 = v12;
  if (v11)
  {
    v14 = [v11 cellRange];
    v15 = [v8 cellRange];
    if (v13)
    {
      [v13 scaleToFit];
      v17 = v16;
      v19 = v18;
      [v8 maximumSize];
      if ([(TSTTablePartitioner *)self shouldReuseLayout:v13 forSize:a4 parentLayout:v8 hint:?])
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
    v15 = 0xFFFFFFLL;
    if (v12)
    {
      v20 = 0;
      v14 = 0xFFFFFFLL;
      v19 = 1.0;
      goto LABEL_18;
    }

    v14 = 0xFFFFFFLL;
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

  v21 = [(TSDDrawableInfo *)[(TSTTablePartitioner *)self tableInfo] isInlineWithText];
  [(TSTTablePartitioner *)self scaleToFit];
  if (v23 == v17 && v22 == v19)
  {
    if (((v14 ^ v15) & 0xFFFFFFFF00FFFFFFLL) == 0)
    {
      goto LABEL_33;
    }

    if (BYTE2(v15) < BYTE2(v14))
    {
      TSTLayoutInvalidateColumns(v13);
      v21 = 1;
    }

    if ((BYTE4(v15) + BYTE2(v15) - 1) > (BYTE4(v14) + BYTE2(v14) - 1))
    {
      TSTLayoutInvalidateColumns(v13);
      v21 = 1;
    }

    if (v15 < v14)
    {
      TSTLayoutInvalidateRows(v13);
      v21 = 1;
    }

    if ((v15 + HIWORD(v15) - 1) > (v14 - 1 + HIWORD(v14)))
    {
      TSTLayoutInvalidateRows(v13);
      v21 = 1;
    }

    v24 = [v13 containedTextEditingLayout];
    if (v24)
    {
      v25 = v24;
      [v24 invalidateTextLayout];
      [v13 invalidateForAutosizingTextLayout:v25];
    }

    else
    {
LABEL_33:
      if (!v21)
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

- (BOOL)didHint:(id)a3 syncWithNextHint:(id)a4 horizontally:(BOOL)a5 delta:(int)a6
{
  v6 = a5;
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

  v13 = [v7 cellRange];
  if (v6)
  {
    if ((BYTE4(v13) + BYTE2(v13) - 1) + 1 == ([v10 cellRange] >> 16))
    {
      v14 = [v7 cellRange];
      if (v14 == [v10 cellRange])
      {
        v15 = [v7 cellRange];
        v16 = (v15 + HIWORD(v15));
        v17 = [v10 cellRange];
        return v16 == (v17 + HIWORD(v17));
      }
    }

    return 0;
  }

  if ((v13 + HIWORD(v13) - 1) + 1 != [v10 cellRange])
  {
    return 0;
  }

  v19 = ([v7 cellRange] >> 16);
  if (v19 != ([v10 cellRange] >> 16))
  {
    return 0;
  }

  v20 = [v7 cellRange];
  v21 = (BYTE4(v20) + BYTE2(v20));
  v22 = [v10 cellRange];
  return v21 == (BYTE4(v22) + BYTE2(v22));
}

- (BOOL)p_didFinishPartitioningHint:(id)a3 horizontally:(BOOL)a4
{
  v4 = a4;
  v6 = [(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] masterLayout];
  if (!a3)
  {
    return 0;
  }

  v7 = v6;
  Range = TSTMasterLayoutGetRange(v6);
  RangeForHint = TSTMasterLayoutGetRangeForHint(v7, a3);
  if (v4)
  {
    v10 = (BYTE4(Range) + BYTE2(Range) - 1);
    v11 = (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1);
    if (v10 < v11)
    {
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 548, @"Horizontal partitioning went beyond the table bounds!"}];
    }

    v14 = v10 > v11;
  }

  else
  {
    v16 = (Range + HIWORD(Range) - 1);
    v17 = RangeForHint + HIWORD(RangeForHint) - 1;
    if (v16 < (RangeForHint + HIWORD(RangeForHint) - 1))
    {
      v18 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner p_didFinishPartitioningHint:horizontally:]"];
      [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 551, @"Vertical partitioning went beyond the table bounds!"}];
    }

    v14 = v16 > v17;
  }

  return !v14;
}

- (id)hintForLayout:(id)a3
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

- (id)partitioningPassForFirstPartitionSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width == *MEMORY[0x277CBF3A8] && a3.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner partitioningPassForFirstPartitionSize:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 599, @"partitioningPassForFirstPartitionSize: Invalid partition size"}];
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

- (id)partitioningPassForHint:(id)a3 withPreviousHint:(id)a4
{
  v7 = [a3 cacheHintID];
  if (a4 && (v7 & 0xFFFFFF) != 0)
  {
    if ([a4 partitioningPass])
    {

      return [a4 partitioningPass];
    }

    else
    {
      v9 = MEMORY[0x277CCABB0];

      return [v9 numberWithUnsignedInt:0];
    }
  }

  else
  {
    [a3 maximumSize];

    return [(TSTTablePartitioner *)self partitioningPassForFirstPartitionSize:?];
  }
}

- (id)hintCacheKeyForHint:(id)a3
{
  v5 = [a3 partitioningPass];
  v6 = [a3 cacheHintID];

  return [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:v5 andHintID:v6];
}

- (void)p_flushCacheAfterPartitioningFinished:(id)a3 lastHint:(id)a4 horizontally:(BOOL)a5
{
  v6 = a5;
  if (!a3)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTablePartitioner p_flushCacheAfterPartitioningFinished:lastHint:horizontally:]"];
    [v10 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTablePartitioner.m"), 636, @"invalid nil value for '%s'", "cache"}];
  }

  v11 = [a4 cacheHintID];
  v12 = v11 & 0xFF000000;
  v13 = [a4 partitioningPass];
  if (v6)
  {
    v14 = HIWORD(v11) + 1;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11 + 1;
  }

  v16 = [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:v13 andHintID:v15 | (v14 << 16) | v12];
  if ([a3 objectForKey:v16])
  {
    while (1)
    {
      if ((~[(TSTTableInfo *)[(TSTTablePartitioner *)self tableInfo] editingCellID]& 0xFFFFFF) == 0)
      {
        [a3 removeObjectForKey:v16];
      }

      v14 += v6 ^ 1;
      v15 += v6;
      v5 = v5 & 0xFFFFFFFF00000000 | v15 | (v14 << 16) | v12;
      v16 = [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:v13 andHintID:v5];
      if (![a3 objectForKey:v16])
      {
        if (v6)
        {
          ++v14;
        }

        else
        {
          v14 = 0;
        }

        if (v6)
        {
          v15 = 0;
        }

        else
        {
          ++v15;
        }

        v17 = v17 & 0xFFFFFFFF00000000 | v15 | (v14 << 16) | v12;
        v16 = [(TSTTablePartitioner *)self hintCacheKeyForPartitioningPass:v13 andHintID:?];
        if (![a3 objectForKey:v16])
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