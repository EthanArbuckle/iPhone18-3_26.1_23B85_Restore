@interface TSTTableInfo
+ (id)geometryForPrototypeIndex:(int64_t)a3 withCanvasPoint:(CGPoint)a4;
+ (id)tablePrototypeWithIndex:(int64_t)a3 context:(id)a4 geometry:(id)a5 styles:(id)a6;
+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)a3;
+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)a3;
+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(int)a5 reservedCount:(unint64_t)a6;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)editingCellRange;
- (TSKDocumentRoot)documentRoot;
- (TSTMasterLayout)masterLayout;
- (TSTTableInfo)initWithContext:(id)a3 fromSourceInfo:(id)a4 carrySelection:(BOOL)a5;
- (TSTTableInfo)initWithContext:(id)a3 fromSourceInfo:(id)a4 cellRegion:(id)a5 carrySelection:(BOOL)a6;
- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4;
- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 rows:(unsigned __int16)a5 columns:(unsigned __int16)a6 styles:(id)a7;
- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 styles:(id)a5;
- (TSTTableInfo)initWithContext:(id)a3 otherTableInfo:(id)a4;
- (TSTTablePartitioner)partitioner;
- (id)allWPStorages;
- (id)childEnumerator;
- (id)copyWithContext:(id)a3;
- (id)descriptionForExactCopy;
- (id)descriptionForPasteboard;
- (id)descriptionForPasteboardWithSource:(id)a3;
- (id)initForTestingWithContext:(id)a3 rows:(unsigned __int16)a4 columns:(unsigned __int16)a5;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)referencedStyles;
- (id)tabularTextRepresentation;
- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)a3 animationFilter:(id)a4;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)dealloc;
- (void)didCopy;
- (void)didReplaceTextsInStoragesWithPlaceHolderString;
- (void)p_didLoadRichTextPayloadTable:(id)a3;
- (void)performBlockWithStylesheetForAddingStyles:(id)a3;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)scaleInfoGeometry:(CGSize)a3;
- (void)setContentWritingDirection:(int64_t)a3;
- (void)setEditingCellID:(id)a3;
- (void)setFormulaEditing:(BOOL)a3;
- (void)setGeometry:(id)a3 resizeInternal:(BOOL)a4 scaleFactor:(CGSize)a5 shouldClearObjectPlaceholderFlag:(BOOL)a6;
- (void)setHasReference:(BOOL)a3;
- (void)setupTableModelForPrototypeIndex:(int64_t)a3;
- (void)shiftGeometryToExcludeTableNameHeight;
- (void)shiftGeometryToIncludeTableNameHeight;
- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
- (void)willCopyWithOtherDrawables:(id)a3;
@end

@implementation TSTTableInfo

- (id)tabularTextRepresentation
{
  v17 = [(TSTTableInfo *)self tableModel];
  v3 = [[TSTCellIterator alloc] initWithTableModel:v17 range:[(TSTTableModel *)v17 range] flags:128];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([(TSTCellIterator *)v3 getNext:v18])
  {
    v5 = 0;
    v6 = 0xFFFF;
    do
    {
      v7 = v21;
      v8 = v19;
      v9 = v20;
      v11 = v22;
      v10 = v23;
      if (v6 == v19)
      {
        [v4 appendString:v5];
      }

      else
      {
        if (v6 != 0xFFFF)
        {
          [v4 appendString:@"\n"];
        }

        v6 = v8;
      }

      v12 = v8 | (v9 << 16);
      if (v11 == 0xFFFF || (*&v11 & 0xFF0000) == 0xFF0000 || v10 < 0x10000 || !v10 || ((v12 ^ v11) & 0xFFFFFF) == 0)
      {
        if (v7 && v7->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 267)
        {
          TSTCellCoerceCellToTextFormat(v7);
        }

        v2 = v2 & 0xFFFFFFFF00000000 | v12;
        v14 = TSTTableStringForCellAtCellID(v17, v7, v2);
        if (v14)
        {
          v15 = v14;
          if ([(__CFString *)v14 rangeOfString:@"\n"]== 0x7FFFFFFFFFFFFFFFLL)
          {
            [v4 appendString:v15];
          }

          else
          {
            [v4 appendFormat:@"%@", v15];
          }
        }

        v13 = TSTTableInfoTextArchiving_TabSpacing;
      }

      else
      {
        v13 = &TSTTableInfoTextArchiving_MergeCellSpacing;
      }

      v5 = *v13;
    }

    while ([(TSTCellIterator *)v3 getNext:v18]);
  }

  return v4;
}

- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 rows:(unsigned __int16)a5 columns:(unsigned __int16)a6 styles:(id)a7
{
  v8 = a6;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = TSTTableInfo;
  v12 = [TSDDrawableInfo initWithContext:sel_initWithContext_geometry_ geometry:?];
  if (v12)
  {
    *(v12 + 18) = [[TSTTableModel alloc] initWithContext:a3 rows:v9 columns:v8 styles:a7 tableInfo:v12];
    *(v12 + 154) = 0xFFFFFF;
    *(v12 + 158) = 0xFFFFFF;
    *(v12 + 21) = 0;
    *(v12 + 22) = 0;
    *(v12 + 23) = [[TSTEditingState alloc] initWithTableInfo:v12];
    [a4 size];
    v14 = v13;
    [a4 size];
    TSTTableInitDefaultHeightAndWidth(v12, v14, v15);
  }

  return v12;
}

- (id)initForTestingWithContext:(id)a3 rows:(unsigned __int16)a4 columns:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [[TSDInfoGeometry alloc] initWithPosition:0.0 size:0.0, 100.0, 200.0];
  v12.receiver = self;
  v12.super_class = TSTTableInfo;
  v10 = [(TSDDrawableInfo *)&v12 initWithContext:a3 geometry:v9];
  if (v10)
  {
    *(v10 + 18) = [[TSTTableModel alloc] initWithContext:a3 rows:v6 columns:v5 styles:[TSTTableStyleNetwork tableInfo:"networkWithContext:presetIndex:colors:alternate:" networkWithContext:a3 presetIndex:0 colors:0 alternate:2], v10];
    *(v10 + 154) = 0xFFFFFF;
    *(v10 + 158) = 0xFFFFFF;
    *(v10 + 21) = 0;
    *(v10 + 22) = 0;
    *(v10 + 23) = [[TSTEditingState alloc] initWithTableInfo:v10];
  }

  return v10;
}

- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4 styles:(id)a5
{
  [a4 size];
  v10 = (v9 / 22.0);
  [a4 size];
  v12 = (v11 / 98.0);
  v13 = +[TSTConfiguration sharedTableConfiguration];
  v14 = [a4 mutableCopy];
  if (v12 > [v13 maxNumberOfColumns])
  {
    v15 = [v13 maxNumberOfColumns];
    LOBYTE(v12) = v15;
    v16 = v15 * 98.0;
    [v14 size];
    [v14 setSize:v16];
  }

  if (v10 > [v13 maxNumberOfRows])
  {
    LOWORD(v10) = [v13 maxNumberOfRows];
    [v14 size];
    [v14 setSize:?];
  }

  return [(TSTTableInfo *)self initWithContext:a3 geometry:v14 rows:v10 columns:v12 styles:a5];
}

- (TSTTableInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableInfo initWithContext:geometry:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 225, @"call - (id) initWithContext: (TSPObjectContext *) context geometry: (TSDInfoGeometry *) geometry styles:(TSTTableStyleNetwork *)styles please"}];
  return 0;
}

- (TSTTableInfo)initWithContext:(id)a3 otherTableInfo:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSTTableInfo;
  v5 = -[TSDDrawableInfo initWithContext:geometry:](&v7, sel_initWithContext_geometry_, a3, [a4 geometry]);
  if (v5)
  {
    *(v5 + 18) = *(a4 + 18);
    *(v5 + 154) = 0xFFFFFF;
    *(v5 + 158) = 0xFFFFFF;
    *(v5 + 21) = 0;
    *(v5 + 22) = 0;
    *(v5 + 23) = [[TSTEditingState alloc] initWithTableInfo:v5];
  }

  return v5;
}

- (TSTTableInfo)initWithContext:(id)a3 fromSourceInfo:(id)a4 cellRegion:(id)a5 carrySelection:(BOOL)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = TSTTableInfo;
  v10 = -[TSDDrawableInfo initWithContext:geometry:](&v29, sel_initWithContext_geometry_, a3, [a4 geometry]);
  if (v10)
  {
    *(v10 + 18) = -[TSTTableModel initWithContext:fromSourceModel:region:tableInfo:]([TSTTableModel alloc], "initWithContext:fromSourceModel:region:tableInfo:", a3, [a4 tableModel], a5, v10);
    *(v10 + 154) = 0xFFFFFF;
    *(v10 + 158) = 0xFFFFFF;
    *(v10 + 21) = 0;
    *(v10 + 22) = 0;
    v11 = 0.0;
    if ([*(v10 + 18) numberOfRows])
    {
      v12 = 0;
      do
      {
        v11 = v11 + TSTTableHeightOfRow(*(v10 + 18), v12++, 0);
      }

      while ([*(v10 + 18) numberOfRows] > v12);
    }

    if ([*(v10 + 18) numberOfColumns])
    {
      v13 = 0;
      v14 = 0.0;
      do
      {
        v14 = v14 + TSTTableWidthOfColumn(*(v10 + 18), v13++, 0);
      }

      while ([*(v10 + 18) numberOfColumns] > v13);
    }

    v15 = [TSDInfoGeometry alloc];
    [objc_msgSend(a4 "geometry")];
    v16 = [TSDInfoGeometry initWithPosition:v15 size:"initWithPosition:size:"];
    [v10 setGeometry:v16 resizeInternal:0];

    *(v10 + 23) = -[TSTEditingState initForPasteboardFromSourceInfo:stylesheet:]([TSTEditingState alloc], "initForPasteboardFromSourceInfo:stylesheet:", v10, [objc_msgSend(objc_msgSend(v10 "tableModel")]);
    if (a6)
    {
      v17 = [a5 boundingCellRange];
      v18 = -[TSTTableSelection initWithTableModel:andPreviousSelection:offsetBy:]([TSTTableSelection alloc], "initWithTableModel:andPreviousSelection:offsetBy:", *(v10 + 18), [objc_msgSend(a4 "editingState")], -BYTE2(v17) - (v17 << 32));
      [*(v10 + 23) setSelection:v18];
      [*(v10 + 23) changeEditingMode:{objc_msgSend(objc_msgSend(a4, "editingState"), "editingMode")}];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [v10 allWPStorages];
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v25 + 1) + 8 * i) setParentInfo:v10];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v21);
    }
  }

  return v10;
}

- (TSTTableInfo)initWithContext:(id)a3 fromSourceInfo:(id)a4 carrySelection:(BOOL)a5
{
  v5 = a5;
  if (a5)
  {
    v9 = [objc_msgSend(objc_msgSend(a4 "editingState")];
  }

  else
  {
    v9 = +[TSTCellRegion regionFromRange:](TSTCellRegion, "regionFromRange:", [objc_msgSend(a4 "tableModel")]);
  }

  return [(TSTTableInfo *)self initWithContext:a3 fromSourceInfo:a4 cellRegion:v9 carrySelection:v5];
}

- (void)dealloc
{
  mMasterLayout = self->mMasterLayout;
  if (mMasterLayout)
  {
    [(TSTMasterLayout *)mMasterLayout wasRemovedFromDocumentRoot];
    [(TSTMasterLayout *)self->mMasterLayout setTableInfo:0];

    self->mMasterLayout = 0;
  }

  mPartitioner = self->mPartitioner;
  if (mPartitioner)
  {

    self->mPartitioner = 0;
  }

  self->mEditingState = 0;
  v5.receiver = self;
  v5.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v5 dealloc];
}

- (id)copyWithContext:(id)a3
{
  v5 = [(TSTTableInfo *)self zone];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{v5), "initWithContext:fromSourceInfo:carrySelection:", a3, self, 0}];
  v7 = v6;
  if (v6)
  {

    v7[11] = [(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self exteriorTextWrap] copyWithZone:v5];
  }

  return v7;
}

- (void)setupTableModelForPrototypeIndex:(int64_t)a3
{
  v4 = [(TSTTableInfo *)self tableModel];
  v5 = v4;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [(TSTTableModel *)v4 setNumberOfHeaderRows:1];
      [(TSTTableModel *)v5 setNumberOfHeaderColumns:1];
      [(TSTTableModel *)v5 setNumberOfFooterRows:1];
      goto LABEL_10;
    }

    if (a3 != 4)
    {
      goto LABEL_10;
    }

LABEL_7:
    [(TSTTableModel *)v4 setNumberOfHeaderRows:1];
    goto LABEL_10;
  }

  if (!a3)
  {
    [(TSTTableModel *)v4 setNumberOfHeaderRows:1];
    [(TSTTableModel *)v5 setNumberOfHeaderColumns:1];
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    goto LABEL_7;
  }

LABEL_10:
  if ([+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")])
  {
    [(TSTTableModel *)v5 setHeaderRowsFrozen:1];
    [(TSTTableModel *)v5 setHeaderColumnsFrozen:1];
  }

  [(TSTTableModel *)v5 setRepeatingHeaderRowsEnabled:1];
  [(TSTTableModel *)v5 setRepeatingHeaderColumnsEnabled:1];
  if (a3 == 4)
  {
    v6 = [(TSTTableModel *)v5 numberOfRows];
    v7 = objc_alloc_init(TSTCell);
    TSTCellClearValue(v7);
    *(&v7->mPrivate + 1) = 6;
    v16 = 0;
    v15 = 0u;
    v14 = 0u;
    v13 = 263;
    TSTCellSetExplicitFormat(v7, &v13);
    mPrivate = v7->mPrivate;
    if ((mPrivate & 0xFF00) == 0)
    {
      TSTCellClearValue(v7);
      *(&v7->mPrivate + 1) = 6;
      mPrivate = v7->mPrivate;
    }

    if ((mPrivate & 0xFF00) == 0x600)
    {
      v7->mPrivate.mValue.mDate = 0;
    }

    else
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetBoolValue(TSTCell *, BOOL)"}];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 939, @"can't set BOOL value to non-BOOL cell: %p", v7}];
    }

    TSTTableSetWidthOfColumn(v5, 1, 147.0);
    TSTTableSetWidthOfColumn(v5, 0, 49.0);
    if (v6 >= 2)
    {
      v11 = v6;
      for (i = 1; i != v11; ++i)
      {
        v6 = i + (v6 & 0xFFFFFFFF00000000);
        TSTTableSetCellAtCellID(v5, v7, v6);
      }
    }
  }
}

+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)a3
{
  if ([+[TSTConfiguration sharedTableConfiguration](TSTConfiguration sharedTableConfiguration])
  {
    return 10;
  }

  else
  {
    return 5;
  }
}

+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)a3
{
  if ([+[TSTConfiguration sharedTableConfiguration](TSTConfiguration sharedTableConfiguration])
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

+ (id)geometryForPrototypeIndex:(int64_t)a3 withCanvasPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [a1 numberOfRowsForProtoIndex:?];
  v9 = ([a1 numberOfColumnsForProtoIndex:a3] * 98.0);
  v10 = [[TSDInfoGeometry alloc] initWithPosition:x - v9 * 0.5 size:y - (v8 * 22.0) * 0.5, v9, (v8 * 22.0)];

  return v10;
}

+ (id)tablePrototypeWithIndex:(int64_t)a3 context:(id)a4 geometry:(id)a5 styles:(id)a6
{
  v7 = -[TSTTableInfo initWithContext:geometry:rows:columns:styles:]([TSTTableInfo alloc], "initWithContext:geometry:rows:columns:styles:", a4, a5, [a1 numberOfRowsForProtoIndex:?], objc_msgSend(a1, "numberOfColumnsForProtoIndex:", a3), a6);
  [(TSTTableInfo *)v7 setupTableModelForPrototypeIndex:a3];
  return v7;
}

- (void)p_didLoadRichTextPayloadTable:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 allRichTextPayloadStorages];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setParentInfo:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)shiftGeometryToIncludeTableNameHeight
{
  v3 = [(TSDDrawableInfo *)self geometry];
  if ([(TSTTableModel *)[(TSTTableInfo *)self tableModel] tableNameEnabled])
  {
    [TSTMasterLayout tableNameTextSize:self->mTableModel];
    v5 = v4;
    v6 = [TSDInfoGeometry alloc];
    [(TSDInfoGeometry *)v3 position];
    v8 = v7;
    [(TSDInfoGeometry *)v3 position];
    v10 = v9 - v5;
    [(TSDInfoGeometry *)v3 size];
    v13 = [(TSDInfoGeometry *)v6 initWithPosition:v8 size:v10, v11, v12];
    [(TSTTableInfo *)self setGeometry:v13];
  }
}

- (void)shiftGeometryToExcludeTableNameHeight
{
  v3 = [(TSDDrawableInfo *)self geometry];
  [TSTMasterLayout tableNameTextSize:self->mTableModel];
  v5 = v4;
  v6 = [TSDInfoGeometry alloc];
  [(TSDInfoGeometry *)v3 position];
  v8 = v7;
  [(TSDInfoGeometry *)v3 position];
  v10 = v5 + v9;
  [(TSDInfoGeometry *)v3 size];
  v13 = [(TSDInfoGeometry *)v6 initWithPosition:v8 size:v10, v11, v12];
  [(TSTTableInfo *)self setGeometry:v13];
}

- (TSKDocumentRoot)documentRoot
{
  v3.receiver = self;
  v3.super_class = TSTTableInfo;
  return [(TSPObject *)&v3 documentRoot];
}

- (TSTTablePartitioner)partitioner
{
  result = self->mPartitioner;
  if (!result)
  {
    result = [[TSTTablePartitioner alloc] initWithInfo:self];
    self->mPartitioner = result;
  }

  return result;
}

- (TSTMasterLayout)masterLayout
{
  result = self->mMasterLayout;
  if (!result)
  {
    result = [[TSTMasterLayout alloc] initWithInfo:self];
    self->mMasterLayout = result;
  }

  return result;
}

- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)a3 animationFilter:(id)a4
{
  v5 = [(TSTTableInfo *)self tableModel:a3];

  return [TSTAnimation stageCountForTextureDeliveryStyle:a3 andTable:v5];
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableInfo mixedObjectWithFraction:ofObject:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 763, @"%@ does not support %s!", objc_opt_class(), "-[TSTTableInfo mixedObjectWithFraction:ofObject:]"}];
  return 0;
}

- (void)setGeometry:(id)a3 resizeInternal:(BOOL)a4 scaleFactor:(CGSize)a5 shouldClearObjectPlaceholderFlag:(BOOL)a6
{
  v6 = a6;
  v7 = a3;
  [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry:a3] size];
  v10 = v9;
  v12 = v11;
  [(TSDInfoGeometry *)v7 size];
  if (v10 != v14 || v12 != v13)
  {
    v16 = [(TSTTableModel *)self->mTableModel numberOfRows];
    v17 = ((v16 - [(TSTTableModel *)self->mTableModel numberOfHiddenRows]) * 8.0);
    v18 = [(TSTTableModel *)self->mTableModel numberOfColumns];
    v19 = ((v18 - [(TSTTableModel *)self->mTableModel numberOfHiddenColumns]) * 8.0);
    [(TSDInfoGeometry *)v7 size];
    v21 = v20;
    v23 = v22;
    [(TSDInfoGeometry *)v7 size];
    v25 = v24;
    [(TSDInfoGeometry *)v7 size];
    v27 = v26;
    [(TSDInfoGeometry *)v7 angle];
    if (v28 != 0.0 || (v27 >= v17 ? (v29 = v25 < v19) : (v29 = 1), v29))
    {
      if (v27 < v17)
      {
        v23 = v17;
      }

      if (v25 < v19)
      {
        v21 = v19;
      }

      v30 = [TSDInfoGeometry alloc];
      [(TSDInfoGeometry *)v7 position];
      v7 = [(TSDInfoGeometry *)v30 initWithPosition:[(TSDInfoGeometry *)v7 widthValid] size:[(TSDInfoGeometry *)v7 heightValid] widthValid:[(TSDInfoGeometry *)v7 horizontalFlip] heightValid:[(TSDInfoGeometry *)v7 verticalFlip] horizontalFlip:v31 verticalFlip:v32 angle:v21, v23, 0.0];
      if (v6)
      {
        goto LABEL_11;
      }

LABEL_17:
      v33 = [(TSDDrawableInfo *)self matchesObjectPlaceholderGeometry];
      v34.receiver = self;
      v34.super_class = TSTTableInfo;
      [(TSDDrawableInfo *)&v34 setGeometry:v7];
      [(TSDDrawableInfo *)self setMatchesObjectPlaceholderGeometry:v33];
      goto LABEL_18;
    }
  }

  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_11:
  v35.receiver = self;
  v35.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v35 setGeometry:v7];
LABEL_18:
  [(TSTTablePartitioner *)[(TSTTableInfo *)self partitioner] setScaleToFit:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
}

- (void)setContentWritingDirection:(int64_t)a3
{
  v5 = [(TSTTableInfo *)self tableModel];
  v6 = objc_alloc_init(TSSPropertyMap);
  [(TSSPropertyMap *)v6 setIntValue:a3 forProperty:798];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TSTTableInfo_setContentWritingDirection___block_invoke;
  v7[3] = &unk_279D4AA70;
  v7[4] = v5;
  v7[5] = v6;
  [(TSTTableInfo *)self performBlockWithStylesheetForAddingStyles:v7];
}

uint64_t __43__TSTTableInfo_setContentWritingDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 variationOfStyle:objc_msgSend(*(a1 + 32) propertyMap:{"tableStyle"), *(a1 + 40)}];
  v4 = *(a1 + 32);

  return [v4 setTableStyle:v3];
}

- (void)scaleInfoGeometry:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ((*MEMORY[0x277CBF3A8] != a3.width || *(MEMORY[0x277CBF3A8] + 8) != a3.height) && (a3.width != 1.0 || a3.height != 1.0))
  {
    v8 = [(TSDDrawableInfo *)self geometry];
    [(TSDInfoGeometry *)v8 size];
    v10 = width * v9;
    [(TSDInfoGeometry *)v8 size];
    v12 = height * v11;
    v13 = [TSDInfoGeometry alloc];
    [(TSDInfoGeometry *)v8 position];
    v15 = v14;
    v17 = v16;
    v18 = [(TSDInfoGeometry *)v8 widthValid];
    v19 = [(TSDInfoGeometry *)v8 heightValid];
    v20 = [(TSDInfoGeometry *)v8 horizontalFlip];
    v21 = [(TSDInfoGeometry *)v8 verticalFlip];
    [(TSDInfoGeometry *)v8 angle];
    v23 = [(TSDInfoGeometry *)v13 initWithPosition:v18 size:v19 widthValid:v20 heightValid:v21 horizontalFlip:v15 verticalFlip:v17 angle:v10, v12, v22];
    [(TSTTableInfo *)self setGeometry:v23 resizeInternal:1];
  }
}

- (void)willBeAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(TSTTableInfo *)self tableModel];
  v8 = [(TSTTableModel *)v7 numberOfColumns];
  if (v8 == [(TSTTableModel *)v7 numberOfHeaderColumns])
  {
    [(TSTTableModel *)v7 setNumberOfHeaderColumns:([(TSTTableModel *)v7 numberOfHeaderColumns]- 1)];
  }

  v9 = [(TSTTableModel *)v7 numberOfRows];
  v10 = [(TSTTableModel *)v7 numberOfHeaderRows];
  if ([(TSTTableModel *)v7 numberOfFooterRows]+ v10 == v9)
  {
    if ([(TSTTableModel *)v7 numberOfFooterRows])
    {
      [(TSTTableModel *)v7 setNumberOfFooterRows:([(TSTTableModel *)v7 numberOfFooterRows]- 1)];
    }

    else
    {
      [(TSTTableModel *)v7 setNumberOfHeaderRows:([(TSTTableModel *)v7 numberOfHeaderRows]- 1)];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(TSTTableInfo *)self allWPStorages];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        [v16 willBeAddedToDocumentRoot:a3 dolcContext:a4];
        [v16 setParentInfo:self];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] willBeAddedToDocumentRoot:a3 dolcContext:a4];
  [(TSTMasterLayout *)self->mMasterLayout willBeAddedToDocumentRoot:a3];
  v17.receiver = self;
  v17.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v17 willBeAddedToDocumentRoot:a3 context:a4];
}

- (void)wasAddedToDocumentRoot:(id)a3 context:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSTTableInfo;
  [TSDDrawableInfo wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"kObjectWasAddedToDocumentNotification" object:a3 userInfo:0];
  if (TSTTableNumberOfComments([(TSTTableInfo *)self tableModel]))
  {
    [v7 postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:a3];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(TSTTableInfo *)self allWPStorages];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) wasAddedToDocumentRoot:a3 dolcContext:a4];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] wasAddedToDocumentRoot:a3 dolcContext:a4];
  if (![(TSTEditingState *)self->mEditingState selection])
  {
    [(TSTEditingState *)self->mEditingState setSelection:[[TSTTableSelection alloc] initWithTableModel:[(TSTTableInfo *)self tableModel] selectionType:5]];
    [(TSTEditingState *)self->mEditingState changeEditingMode:0];
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_respondsToSelector();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TSTTableInfo *)self allWPStorages];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) willBeRemovedFromDocumentRoot:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] willBeRemovedFromDocumentRoot:a3];
  v10.receiver = self;
  v10.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v10 willBeRemovedFromDocumentRoot:a3];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"kObjectWasRemovedFromDocumentNotification" object:a3 userInfo:0];
  if (TSTTableNumberOfComments([(TSTTableInfo *)self tableModel]))
  {
    [v5 postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:a3];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(TSTTableInfo *)self allWPStorages];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) wasRemovedFromDocumentRoot:a3];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] wasRemovedFromDocumentRoot:a3];
  [(TSTMasterLayout *)self->mMasterLayout wasRemovedFromDocumentRoot];
  v11.receiver = self;
  v11.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v11 wasRemovedFromDocumentRoot:a3];
}

- (id)childEnumerator
{
  v2 = [(TSTTableInfo *)self allWPStorages];

  return [v2 objectEnumerator];
}

+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(int)a5 reservedCount:(unint64_t)a6
{
  v7 = *&a5;
  v10 = [a4 stylesheet];
  v11 = [a4 context];
  v12 = 6 - a6;
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6 - a6];
  if ([a3 isEqual:String])
  {
    v17 = a3;
    if (a6 != 6)
    {
      v13 = 0;
      do
      {
        v14 = -[TSTTableStylePreset initWithStyleNetwork:index:]([TSTTableStylePreset alloc], "initWithStyleNetwork:index:", +[TSTTableStyleNetwork createStylesInStylesheet:presetIndex:colors:alternate:](TSTTableStyleNetwork, "createStylesInStylesheet:presetIndex:colors:alternate:", v10, v13, [a4 colors], v7), v13);
        if ([(TSPObject *)v14 context]!= v11)
        {
          v15 = [MEMORY[0x277D6C290] currentHandler];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableInfo bootstrapPresetsOfKind:inTheme:alternate:reservedCount:]"];
          [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 1252, @"expected equality between %s and %s", "p.context", "context"}];
        }

        [v18 addObject:v14];

        ++v13;
      }

      while (v12 != v13);
    }

    [a4 setPresets:v18 ofKind:v17];
  }
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  [(TSTTableModel *)[(TSTTableInfo *)self tableModel] adoptStylesheet:a3 withMapper:a4];
  v7 = [(TSTTableInfo *)self editingState];

  [(TSTEditingState *)v7 adoptStylesheet:a3 withMapper:a4];
}

- (id)referencedStyles
{
  v2 = [(TSTTableInfo *)self tableModel];
  v3 = [TSTTableStyleNetwork networkFromTableModel:v2];
  v4 = [MEMORY[0x277CBEB58] setWithArray:{objc_msgSend(v3, "styleArray")}];
  v5 = [[TSTCellIterator alloc] initWithTableModel:v2 flags:352];
  if (TSTCellIteratorGetNextCell(v5, v8))
  {
    do
    {
      v6 = v9;
      if (v9)
      {
        if (*(v9 + 40))
        {
          [v4 addObject:?];
        }

        if (*(v6 + 56))
        {
          [v4 addObject:?];
        }
      }
    }

    while ((TSTCellIteratorGetNextCell(v5, v8) & 1) != 0);
  }

  return v4;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [+[TSTTableStyleNetwork networkFromTableModel:](TSTTableStyleNetwork networkFromTableModel:{-[TSTTableInfo tableModel](self, "tableModel")), "styleArray"}];
  v6 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = (*(a3 + 2))(a3, v12);
        v9 |= v13 != v12;
        [v6 addObject:v13];
      }

      v8 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
    if (v9)
    {
      v5 = [TSTTableStyleNetwork alloc];
      v14 = [v5 initWithContext:-[TSPObject context](self fromArray:"context") presetIndex:{v6, -[TSTTableModel presetIndex](-[TSTTableInfo tableModel](self, "tableModel"), "presetIndex")}];
      [(TSTTableModel *)[(TSTTableInfo *)self tableModel] resetStyles:v14];
    }
  }

  v15 = [[TSTCellIterator alloc] initWithTableModel:[(TSTTableInfo *)self tableModel] flags:48];
  v16 = [[TSTEphemeralCellMap alloc] initWithCapacity:1];
  if ([(TSTCellIterator *)v15 getNext:v28])
  {
    do
    {
      v17 = v30;
      if (!v30)
      {
        continue;
      }

      v18 = *(v30 + 40);
      if (v18)
      {
        objc_opt_class();
        (*(a3 + 2))(a3, v18);
        v19 = TSUDynamicCast();
        v17 = v30;
        if (v19 != v18)
        {
          v20 = v19;
          v21 = *(v30 + 40);
          if (v21 != v19)
          {

            *(v17 + 40) = v20;
            *(v17 + 32) = 0;
            v17 = v30;
            if (!v30)
            {
              goto LABEL_24;
            }
          }

          v22 = 1;
          goto LABEL_19;
        }

        if (!v30)
        {
          continue;
        }
      }

      v22 = 0;
LABEL_19:
      v23 = *(v17 + 56);
      if (v23)
      {
        objc_opt_class();
        (*(a3 + 2))(a3, v23);
        v24 = TSUDynamicCast();
        if (v24 != v23)
        {
          v25 = v24;
          v26 = v30;
          v27 = *(v30 + 56);
          if (v27 != v24)
          {

            *(v26 + 56) = v25;
            *(v26 + 48) = 0;
          }

LABEL_24:
          v5 = v5 & 0xFFFFFFFF00000000 | v29;
          [(TSTEphemeralCellMap *)v16 addCell:v30 andCellID:v5];
          continue;
        }
      }

      if (v22)
      {
        goto LABEL_24;
      }
    }

    while ([(TSTCellIterator *)v15 getNext:v28]);
  }
}

- (id)descriptionForPasteboard
{
  v7[5] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = TSTTableInfo;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[TSDDrawableInfo descriptionForPasteboard](&v5, sel_descriptionForPasteboard)}];
  v6[0] = kTSTDescriptionHasFormulas;
  v7[0] = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6[1] = kTSTDescriptionNumberOfRows;
  v7[1] = [MEMORY[0x277CCABB0] numberWithInt:{-[TSTTableModel numberOfRows](self->mTableModel, "numberOfRows")}];
  v6[2] = kTSTDescriptionNumberOfColumns;
  v7[2] = [MEMORY[0x277CCABB0] numberWithInt:{-[TSTTableModel numberOfColumns](self->mTableModel, "numberOfColumns")}];
  v6[3] = kTSTDescriptionHasMergeRanges;
  v7[3] = [MEMORY[0x277CCABB0] numberWithInt:{-[TSTTableModel hasMergeRanges](self->mTableModel, "hasMergeRanges")}];
  v6[4] = kTSTDescriptionFullyFilteredTable;
  v7[4] = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v3 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, v6, 5)}];
  return v3;
}

- (id)descriptionForExactCopy
{
  v10[6] = *MEMORY[0x277D85DE8];
  v3 = [(TSTTableModel *)[(TSTTableInfo *)self tableModel] range];
  if ([(TSTEditingState *)[(TSTTableInfo *)self editingState] selection])
  {
    v4 = [(TSTCellRegion *)[(TSTTableSelection *)[(TSTEditingState *)[(TSTTableInfo *)self editingState] selection] cellRegion] boundingCellRange];
  }

  else
  {
    v4 = 0;
  }

  v5 = CFUUIDCreateString(*MEMORY[0x277CBECE8], [(TSTTableModel *)[(TSTTableInfo *)self tableModel] tableID]);
  v6 = v5;
  v10[0] = v5;
  v9[0] = kTSTDescriptionSourceTableID;
  v9[1] = kTSTDescriptionSourceRange;
  v8 = v3;
  v10[1] = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:8];
  v9[2] = kTSTDescriptionSourceOrigin;
  v8.var0 = v4;
  v10[2] = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:4];
  v9[3] = kTSTDescriptionSourceNumHeaderRows;
  v10[3] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[TSTTableModel numberOfHeaderRows](-[TSTTableInfo tableModel](self, "tableModel"), "numberOfHeaderRows")}];
  v9[4] = kTSTDescriptionSourceNumHeaderColumns;
  v10[4] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[TSTTableModel numberOfHeaderColumns](-[TSTTableInfo tableModel](self, "tableModel"), "numberOfHeaderColumns")}];
  v9[5] = kTSTDescriptionSourceNumFooterRows;
  v10[5] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[TSTTableModel numberOfFooterRows](-[TSTTableInfo tableModel](self, "tableModel"), "numberOfFooterRows")}];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
}

- (id)descriptionForPasteboardWithSource:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = [(TSTTableInfo *)self descriptionForPasteboard];
  if (v4)
  {
    v6 = [v4 descriptionForExactCopy];
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    [v5 addEntriesFromDictionary:v6];
  }

  return v5;
}

- (void)setEditingCellID:(id)a3
{
  if (a3.var0 == 0xFFFF || (*&a3.var0 & 0xFF0000) == 0xFF0000)
  {
    self->mPreviousEditingCellID = 0xFFFFFF;
  }

  else
  {
    self->mPreviousEditingCellID = self->mEditingCellID;
  }

  self->mEditingCellID = a3;
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)editingCellRange
{
  v3 = [(TSTTableInfo *)self editingCellID];
  v4 = TSTTableMergeRangeAtCellID([(TSTTableInfo *)self tableModel], *&v3);
  if (v4 == 0xFFFF)
  {
    return (*&v3 | 0x1000100000000);
  }

  v5 = (v4 & 0xFF0000) == 0xFF0000 || HIWORD(v4) == 0;
  if (v5 || (v4 & 0xFFFF00000000) == 0)
  {
    return (*&v3 | 0x1000100000000);
  }

  return v4;
}

- (void)setFormulaEditing:(BOOL)a3
{
  if (self->mIsFormulaEditing == a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableInfo setFormulaEditing:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 1553, @"Calling setFormulaEditing with the same value as existing.  These should be paired up."}];
  }

  self->mIsFormulaEditing = a3;
}

- (void)setHasReference:(BOOL)a3
{
  if (self->mHasReference != a3)
  {
    self->mHasReference = a3;
  }
}

- (void)willCopyWithOtherDrawables:(id)a3
{
  v3 = [(TSTTableInfo *)self tableModel];

  [(TSTTableModel *)v3 setDrawableIsBeingCopied:1];
}

- (void)didCopy
{
  v2 = [(TSTTableInfo *)self tableModel];

  [(TSTTableModel *)v2 setDrawableIsBeingCopied:0];
}

- (id)allWPStorages
{
  v2 = [(TSTTableInfo *)self tableModel];

  return [(TSTTableModel *)v2 allRichTextPayloadStorages];
}

- (void)didReplaceTextsInStoragesWithPlaceHolderString
{
  [(TSUConcurrentCache *)[(TSTMasterLayout *)self->mMasterLayout dupContentCache] removeAllObjects];
  v3 = [(TSTMasterLayout *)self->mMasterLayout cellIDToWPColumnCache];

  [(TSUConcurrentCache *)v3 removeAllObjects];
}

- (void)performBlockWithStylesheetForAddingStyles:(id)a3
{
  v5 = [(TSTTableInfo *)self documentRoot];
  v6 = [(TSKDocumentRoot *)v5 stylesheet];
  v7 = [(TSSTheme *)[(TSKDocumentRoot *)v5 theme] stylesheet];
  if ([(TSDDrawableInfo *)self isThemeContent])
  {
    if ([(TSSStylesheet *)v7 isLocked])
    {
      [(TSSStylesheet *)v7 setIsLocked:0];
      (*(a3 + 2))(a3, v7);

      [(TSSStylesheet *)v7 setIsLocked:1];
      return;
    }
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 2);

  v8(a3, v7);
}

@end