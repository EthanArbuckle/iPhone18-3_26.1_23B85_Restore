@interface TSTTableInfo
+ (id)geometryForPrototypeIndex:(int64_t)index withCanvasPoint:(CGPoint)point;
+ (id)tablePrototypeWithIndex:(int64_t)index context:(id)context geometry:(id)geometry styles:(id)styles;
+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)index;
+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)index;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate reservedCount:(unint64_t)count;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)editingCellRange;
- (TSKDocumentRoot)documentRoot;
- (TSTMasterLayout)masterLayout;
- (TSTTableInfo)initWithContext:(id)context fromSourceInfo:(id)info carrySelection:(BOOL)selection;
- (TSTTableInfo)initWithContext:(id)context fromSourceInfo:(id)info cellRegion:(id)region carrySelection:(BOOL)selection;
- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry rows:(unsigned __int16)rows columns:(unsigned __int16)columns styles:(id)styles;
- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry styles:(id)styles;
- (TSTTableInfo)initWithContext:(id)context otherTableInfo:(id)info;
- (TSTTablePartitioner)partitioner;
- (id)allWPStorages;
- (id)childEnumerator;
- (id)copyWithContext:(id)context;
- (id)descriptionForExactCopy;
- (id)descriptionForPasteboard;
- (id)descriptionForPasteboardWithSource:(id)source;
- (id)initForTestingWithContext:(id)context rows:(unsigned __int16)rows columns:(unsigned __int16)columns;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)referencedStyles;
- (id)tabularTextRepresentation;
- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style animationFilter:(id)filter;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)didCopy;
- (void)didReplaceTextsInStoragesWithPlaceHolderString;
- (void)p_didLoadRichTextPayloadTable:(id)table;
- (void)performBlockWithStylesheetForAddingStyles:(id)styles;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)scaleInfoGeometry:(CGSize)geometry;
- (void)setContentWritingDirection:(int64_t)direction;
- (void)setEditingCellID:(id)d;
- (void)setFormulaEditing:(BOOL)editing;
- (void)setGeometry:(id)geometry resizeInternal:(BOOL)internal scaleFactor:(CGSize)factor shouldClearObjectPlaceholderFlag:(BOOL)flag;
- (void)setHasReference:(BOOL)reference;
- (void)setupTableModelForPrototypeIndex:(int64_t)index;
- (void)shiftGeometryToExcludeTableNameHeight;
- (void)shiftGeometryToIncludeTableNameHeight;
- (void)wasAddedToDocumentRoot:(id)root context:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root context:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
- (void)willCopyWithOtherDrawables:(id)drawables;
@end

@implementation TSTTableInfo

- (id)tabularTextRepresentation
{
  tableModel = [(TSTTableInfo *)self tableModel];
  v3 = [[TSTCellIterator alloc] initWithTableModel:tableModel range:[(TSTTableModel *)tableModel range] flags:128];
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
        v14 = TSTTableStringForCellAtCellID(tableModel, v7, v2);
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

- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry rows:(unsigned __int16)rows columns:(unsigned __int16)columns styles:(id)styles
{
  columnsCopy = columns;
  rowsCopy = rows;
  v17.receiver = self;
  v17.super_class = TSTTableInfo;
  v12 = [TSDDrawableInfo initWithContext:sel_initWithContext_geometry_ geometry:?];
  if (v12)
  {
    *(v12 + 18) = [[TSTTableModel alloc] initWithContext:context rows:rowsCopy columns:columnsCopy styles:styles tableInfo:v12];
    *(v12 + 154) = 0xFFFFFF;
    *(v12 + 158) = 0xFFFFFF;
    *(v12 + 21) = 0;
    *(v12 + 22) = 0;
    *(v12 + 23) = [[TSTEditingState alloc] initWithTableInfo:v12];
    [geometry size];
    v14 = v13;
    [geometry size];
    TSTTableInitDefaultHeightAndWidth(v12, v14, v15);
  }

  return v12;
}

- (id)initForTestingWithContext:(id)context rows:(unsigned __int16)rows columns:(unsigned __int16)columns
{
  columnsCopy = columns;
  rowsCopy = rows;
  v9 = [[TSDInfoGeometry alloc] initWithPosition:0.0 size:0.0, 100.0, 200.0];
  v12.receiver = self;
  v12.super_class = TSTTableInfo;
  v10 = [(TSDDrawableInfo *)&v12 initWithContext:context geometry:v9];
  if (v10)
  {
    *(v10 + 18) = [[TSTTableModel alloc] initWithContext:context rows:rowsCopy columns:columnsCopy styles:[TSTTableStyleNetwork tableInfo:"networkWithContext:presetIndex:colors:alternate:" networkWithContext:context presetIndex:0 colors:0 alternate:2], v10];
    *(v10 + 154) = 0xFFFFFF;
    *(v10 + 158) = 0xFFFFFF;
    *(v10 + 21) = 0;
    *(v10 + 22) = 0;
    *(v10 + 23) = [[TSTEditingState alloc] initWithTableInfo:v10];
  }

  return v10;
}

- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry styles:(id)styles
{
  [geometry size];
  v10 = (v9 / 22.0);
  [geometry size];
  v12 = (v11 / 98.0);
  v13 = +[TSTConfiguration sharedTableConfiguration];
  v14 = [geometry mutableCopy];
  if (v12 > [v13 maxNumberOfColumns])
  {
    maxNumberOfColumns = [v13 maxNumberOfColumns];
    LOBYTE(v12) = maxNumberOfColumns;
    v16 = maxNumberOfColumns * 98.0;
    [v14 size];
    [v14 setSize:v16];
  }

  if (v10 > [v13 maxNumberOfRows])
  {
    LOWORD(v10) = [v13 maxNumberOfRows];
    [v14 size];
    [v14 setSize:?];
  }

  return [(TSTTableInfo *)self initWithContext:context geometry:v14 rows:v10 columns:v12 styles:styles];
}

- (TSTTableInfo)initWithContext:(id)context geometry:(id)geometry
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableInfo initWithContext:geometry:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 225, @"call - (id) initWithContext: (TSPObjectContext *) context geometry: (TSDInfoGeometry *) geometry styles:(TSTTableStyleNetwork *)styles please"}];
  return 0;
}

- (TSTTableInfo)initWithContext:(id)context otherTableInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = TSTTableInfo;
  v5 = -[TSDDrawableInfo initWithContext:geometry:](&v7, sel_initWithContext_geometry_, context, [info geometry]);
  if (v5)
  {
    *(v5 + 18) = *(info + 18);
    *(v5 + 154) = 0xFFFFFF;
    *(v5 + 158) = 0xFFFFFF;
    *(v5 + 21) = 0;
    *(v5 + 22) = 0;
    *(v5 + 23) = [[TSTEditingState alloc] initWithTableInfo:v5];
  }

  return v5;
}

- (TSTTableInfo)initWithContext:(id)context fromSourceInfo:(id)info cellRegion:(id)region carrySelection:(BOOL)selection
{
  v31 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = TSTTableInfo;
  v10 = -[TSDDrawableInfo initWithContext:geometry:](&v29, sel_initWithContext_geometry_, context, [info geometry]);
  if (v10)
  {
    *(v10 + 18) = -[TSTTableModel initWithContext:fromSourceModel:region:tableInfo:]([TSTTableModel alloc], "initWithContext:fromSourceModel:region:tableInfo:", context, [info tableModel], region, v10);
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
    [objc_msgSend(info "geometry")];
    v16 = [TSDInfoGeometry initWithPosition:v15 size:"initWithPosition:size:"];
    [v10 setGeometry:v16 resizeInternal:0];

    *(v10 + 23) = -[TSTEditingState initForPasteboardFromSourceInfo:stylesheet:]([TSTEditingState alloc], "initForPasteboardFromSourceInfo:stylesheet:", v10, [objc_msgSend(objc_msgSend(v10 "tableModel")]);
    if (selection)
    {
      boundingCellRange = [region boundingCellRange];
      v18 = -[TSTTableSelection initWithTableModel:andPreviousSelection:offsetBy:]([TSTTableSelection alloc], "initWithTableModel:andPreviousSelection:offsetBy:", *(v10 + 18), [objc_msgSend(info "editingState")], -BYTE2(boundingCellRange) - (boundingCellRange << 32));
      [*(v10 + 23) setSelection:v18];
      [*(v10 + 23) changeEditingMode:{objc_msgSend(objc_msgSend(info, "editingState"), "editingMode")}];
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allWPStorages = [v10 allWPStorages];
    v20 = [allWPStorages countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(allWPStorages);
          }

          [*(*(&v25 + 1) + 8 * i) setParentInfo:v10];
        }

        v21 = [allWPStorages countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v21);
    }
  }

  return v10;
}

- (TSTTableInfo)initWithContext:(id)context fromSourceInfo:(id)info carrySelection:(BOOL)selection
{
  selectionCopy = selection;
  if (selection)
  {
    v9 = [objc_msgSend(objc_msgSend(info "editingState")];
  }

  else
  {
    v9 = +[TSTCellRegion regionFromRange:](TSTCellRegion, "regionFromRange:", [objc_msgSend(info "tableModel")]);
  }

  return [(TSTTableInfo *)self initWithContext:context fromSourceInfo:info cellRegion:v9 carrySelection:selectionCopy];
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

- (id)copyWithContext:(id)context
{
  v5 = [(TSTTableInfo *)self zone];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{v5), "initWithContext:fromSourceInfo:carrySelection:", context, self, 0}];
  v7 = v6;
  if (v6)
  {

    v7[11] = [(TSDExteriorTextWrap *)[(TSDDrawableInfo *)self exteriorTextWrap] copyWithZone:v5];
  }

  return v7;
}

- (void)setupTableModelForPrototypeIndex:(int64_t)index
{
  tableModel = [(TSTTableInfo *)self tableModel];
  v5 = tableModel;
  if (index > 2)
  {
    if (index == 3)
    {
      [(TSTTableModel *)tableModel setNumberOfHeaderRows:1];
      [(TSTTableModel *)v5 setNumberOfHeaderColumns:1];
      [(TSTTableModel *)v5 setNumberOfFooterRows:1];
      goto LABEL_10;
    }

    if (index != 4)
    {
      goto LABEL_10;
    }

LABEL_7:
    [(TSTTableModel *)tableModel setNumberOfHeaderRows:1];
    goto LABEL_10;
  }

  if (!index)
  {
    [(TSTTableModel *)tableModel setNumberOfHeaderRows:1];
    [(TSTTableModel *)v5 setNumberOfHeaderColumns:1];
    goto LABEL_10;
  }

  if (index == 1)
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
  if (index == 4)
  {
    numberOfRows = [(TSTTableModel *)v5 numberOfRows];
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetBoolValue(TSTCell *, BOOL)"}];
      [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 939, @"can't set BOOL value to non-BOOL cell: %p", v7}];
    }

    TSTTableSetWidthOfColumn(v5, 1, 147.0);
    TSTTableSetWidthOfColumn(v5, 0, 49.0);
    if (numberOfRows >= 2)
    {
      v11 = numberOfRows;
      for (i = 1; i != v11; ++i)
      {
        numberOfRows = i + (numberOfRows & 0xFFFFFFFF00000000);
        TSTTableSetCellAtCellID(v5, v7, numberOfRows);
      }
    }
  }
}

+ (unsigned)numberOfRowsForProtoIndex:(unint64_t)index
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

+ (unsigned)numberOfColumnsForProtoIndex:(unint64_t)index
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

+ (id)geometryForPrototypeIndex:(int64_t)index withCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v8 = [self numberOfRowsForProtoIndex:?];
  v9 = ([self numberOfColumnsForProtoIndex:index] * 98.0);
  v10 = [[TSDInfoGeometry alloc] initWithPosition:x - v9 * 0.5 size:y - (v8 * 22.0) * 0.5, v9, (v8 * 22.0)];

  return v10;
}

+ (id)tablePrototypeWithIndex:(int64_t)index context:(id)context geometry:(id)geometry styles:(id)styles
{
  v7 = -[TSTTableInfo initWithContext:geometry:rows:columns:styles:]([TSTTableInfo alloc], "initWithContext:geometry:rows:columns:styles:", context, geometry, [self numberOfRowsForProtoIndex:?], objc_msgSend(self, "numberOfColumnsForProtoIndex:", index), styles);
  [(TSTTableInfo *)v7 setupTableModelForPrototypeIndex:index];
  return v7;
}

- (void)p_didLoadRichTextPayloadTable:(id)table
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allRichTextPayloadStorages = [table allRichTextPayloadStorages];
  v5 = [allRichTextPayloadStorages countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allRichTextPayloadStorages);
        }

        [*(*(&v9 + 1) + 8 * v8++) setParentInfo:self];
      }

      while (v6 != v8);
      v6 = [allRichTextPayloadStorages countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)shiftGeometryToIncludeTableNameHeight
{
  geometry = [(TSDDrawableInfo *)self geometry];
  if ([(TSTTableModel *)[(TSTTableInfo *)self tableModel] tableNameEnabled])
  {
    [TSTMasterLayout tableNameTextSize:self->mTableModel];
    v5 = v4;
    v6 = [TSDInfoGeometry alloc];
    [(TSDInfoGeometry *)geometry position];
    v8 = v7;
    [(TSDInfoGeometry *)geometry position];
    v10 = v9 - v5;
    [(TSDInfoGeometry *)geometry size];
    v13 = [(TSDInfoGeometry *)v6 initWithPosition:v8 size:v10, v11, v12];
    [(TSTTableInfo *)self setGeometry:v13];
  }
}

- (void)shiftGeometryToExcludeTableNameHeight
{
  geometry = [(TSDDrawableInfo *)self geometry];
  [TSTMasterLayout tableNameTextSize:self->mTableModel];
  v5 = v4;
  v6 = [TSDInfoGeometry alloc];
  [(TSDInfoGeometry *)geometry position];
  v8 = v7;
  [(TSDInfoGeometry *)geometry position];
  v10 = v5 + v9;
  [(TSDInfoGeometry *)geometry size];
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

- (unint64_t)chunkCountForTextureDeliveryStyle:(unint64_t)style animationFilter:(id)filter
{
  v5 = [(TSTTableInfo *)self tableModel:style];

  return [TSTAnimation stageCountForTextureDeliveryStyle:style andTable:v5];
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableInfo mixedObjectWithFraction:ofObject:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 763, @"%@ does not support %s!", objc_opt_class(), "-[TSTTableInfo mixedObjectWithFraction:ofObject:]"}];
  return 0;
}

- (void)setGeometry:(id)geometry resizeInternal:(BOOL)internal scaleFactor:(CGSize)factor shouldClearObjectPlaceholderFlag:(BOOL)flag
{
  flagCopy = flag;
  geometryCopy = geometry;
  [(TSDInfoGeometry *)[(TSDDrawableInfo *)self geometry:geometry] size];
  v10 = v9;
  v12 = v11;
  [(TSDInfoGeometry *)geometryCopy size];
  if (v10 != v14 || v12 != v13)
  {
    numberOfRows = [(TSTTableModel *)self->mTableModel numberOfRows];
    v17 = ((numberOfRows - [(TSTTableModel *)self->mTableModel numberOfHiddenRows]) * 8.0);
    numberOfColumns = [(TSTTableModel *)self->mTableModel numberOfColumns];
    v19 = ((numberOfColumns - [(TSTTableModel *)self->mTableModel numberOfHiddenColumns]) * 8.0);
    [(TSDInfoGeometry *)geometryCopy size];
    v21 = v20;
    v23 = v22;
    [(TSDInfoGeometry *)geometryCopy size];
    v25 = v24;
    [(TSDInfoGeometry *)geometryCopy size];
    v27 = v26;
    [(TSDInfoGeometry *)geometryCopy angle];
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
      [(TSDInfoGeometry *)geometryCopy position];
      geometryCopy = [(TSDInfoGeometry *)v30 initWithPosition:[(TSDInfoGeometry *)geometryCopy widthValid] size:[(TSDInfoGeometry *)geometryCopy heightValid] widthValid:[(TSDInfoGeometry *)geometryCopy horizontalFlip] heightValid:[(TSDInfoGeometry *)geometryCopy verticalFlip] horizontalFlip:v31 verticalFlip:v32 angle:v21, v23, 0.0];
      if (flagCopy)
      {
        goto LABEL_11;
      }

LABEL_17:
      matchesObjectPlaceholderGeometry = [(TSDDrawableInfo *)self matchesObjectPlaceholderGeometry];
      v34.receiver = self;
      v34.super_class = TSTTableInfo;
      [(TSDDrawableInfo *)&v34 setGeometry:geometryCopy];
      [(TSDDrawableInfo *)self setMatchesObjectPlaceholderGeometry:matchesObjectPlaceholderGeometry];
      goto LABEL_18;
    }
  }

  if (!flagCopy)
  {
    goto LABEL_17;
  }

LABEL_11:
  v35.receiver = self;
  v35.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v35 setGeometry:geometryCopy];
LABEL_18:
  [(TSTTablePartitioner *)[(TSTTableInfo *)self partitioner] setScaleToFit:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
}

- (void)setContentWritingDirection:(int64_t)direction
{
  tableModel = [(TSTTableInfo *)self tableModel];
  v6 = objc_alloc_init(TSSPropertyMap);
  [(TSSPropertyMap *)v6 setIntValue:direction forProperty:798];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__TSTTableInfo_setContentWritingDirection___block_invoke;
  v7[3] = &unk_279D4AA70;
  v7[4] = tableModel;
  v7[5] = v6;
  [(TSTTableInfo *)self performBlockWithStylesheetForAddingStyles:v7];
}

uint64_t __43__TSTTableInfo_setContentWritingDirection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 variationOfStyle:objc_msgSend(*(a1 + 32) propertyMap:{"tableStyle"), *(a1 + 40)}];
  v4 = *(a1 + 32);

  return [v4 setTableStyle:v3];
}

- (void)scaleInfoGeometry:(CGSize)geometry
{
  height = geometry.height;
  width = geometry.width;
  if ((*MEMORY[0x277CBF3A8] != geometry.width || *(MEMORY[0x277CBF3A8] + 8) != geometry.height) && (geometry.width != 1.0 || geometry.height != 1.0))
  {
    geometry = [(TSDDrawableInfo *)self geometry];
    [(TSDInfoGeometry *)geometry size];
    v10 = width * v9;
    [(TSDInfoGeometry *)geometry size];
    v12 = height * v11;
    v13 = [TSDInfoGeometry alloc];
    [(TSDInfoGeometry *)geometry position];
    v15 = v14;
    v17 = v16;
    widthValid = [(TSDInfoGeometry *)geometry widthValid];
    heightValid = [(TSDInfoGeometry *)geometry heightValid];
    horizontalFlip = [(TSDInfoGeometry *)geometry horizontalFlip];
    verticalFlip = [(TSDInfoGeometry *)geometry verticalFlip];
    [(TSDInfoGeometry *)geometry angle];
    v23 = [(TSDInfoGeometry *)v13 initWithPosition:widthValid size:heightValid widthValid:horizontalFlip heightValid:verticalFlip horizontalFlip:v15 verticalFlip:v17 angle:v10, v12, v22];
    [(TSTTableInfo *)self setGeometry:v23 resizeInternal:1];
  }
}

- (void)willBeAddedToDocumentRoot:(id)root context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  tableModel = [(TSTTableInfo *)self tableModel];
  numberOfColumns = [(TSTTableModel *)tableModel numberOfColumns];
  if (numberOfColumns == [(TSTTableModel *)tableModel numberOfHeaderColumns])
  {
    [(TSTTableModel *)tableModel setNumberOfHeaderColumns:([(TSTTableModel *)tableModel numberOfHeaderColumns]- 1)];
  }

  numberOfRows = [(TSTTableModel *)tableModel numberOfRows];
  numberOfHeaderRows = [(TSTTableModel *)tableModel numberOfHeaderRows];
  if ([(TSTTableModel *)tableModel numberOfFooterRows]+ numberOfHeaderRows == numberOfRows)
  {
    if ([(TSTTableModel *)tableModel numberOfFooterRows])
    {
      [(TSTTableModel *)tableModel setNumberOfFooterRows:([(TSTTableModel *)tableModel numberOfFooterRows]- 1)];
    }

    else
    {
      [(TSTTableModel *)tableModel setNumberOfHeaderRows:([(TSTTableModel *)tableModel numberOfHeaderRows]- 1)];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allWPStorages = [(TSTTableInfo *)self allWPStorages];
  v12 = [allWPStorages countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allWPStorages);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        [v16 willBeAddedToDocumentRoot:root dolcContext:context];
        [v16 setParentInfo:self];
      }

      v13 = [allWPStorages countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] willBeAddedToDocumentRoot:root dolcContext:context];
  [(TSTMasterLayout *)self->mMasterLayout willBeAddedToDocumentRoot:root];
  v17.receiver = self;
  v17.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v17 willBeAddedToDocumentRoot:root context:context];
}

- (void)wasAddedToDocumentRoot:(id)root context:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSTTableInfo;
  [TSDDrawableInfo wasAddedToDocumentRoot:sel_wasAddedToDocumentRoot_context_ context:?];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kObjectWasAddedToDocumentNotification" object:root userInfo:0];
  if (TSTTableNumberOfComments([(TSTTableInfo *)self tableModel]))
  {
    [defaultCenter postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:root];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allWPStorages = [(TSTTableInfo *)self allWPStorages];
  v9 = [allWPStorages countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(allWPStorages);
        }

        [*(*(&v13 + 1) + 8 * v12++) wasAddedToDocumentRoot:root dolcContext:context];
      }

      while (v10 != v12);
      v10 = [allWPStorages countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] wasAddedToDocumentRoot:root dolcContext:context];
  if (![(TSTEditingState *)self->mEditingState selection])
  {
    [(TSTEditingState *)self->mEditingState setSelection:[[TSTTableSelection alloc] initWithTableModel:[(TSTTableInfo *)self tableModel] selectionType:5]];
    [(TSTEditingState *)self->mEditingState changeEditingMode:0];
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_respondsToSelector();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allWPStorages = [(TSTTableInfo *)self allWPStorages];
  v6 = [allWPStorages countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allWPStorages);
        }

        [*(*(&v11 + 1) + 8 * v9++) willBeRemovedFromDocumentRoot:root];
      }

      while (v7 != v9);
      v7 = [allWPStorages countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] willBeRemovedFromDocumentRoot:root];
  v10.receiver = self;
  v10.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v10 willBeRemovedFromDocumentRoot:root];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v17 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kObjectWasRemovedFromDocumentNotification" object:root userInfo:0];
  if (TSTTableNumberOfComments([(TSTTableInfo *)self tableModel]))
  {
    [defaultCenter postNotificationName:@"kTSDAnnotationInvalidatedNotification" object:root];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allWPStorages = [(TSTTableInfo *)self allWPStorages];
  v7 = [allWPStorages countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allWPStorages);
        }

        [*(*(&v12 + 1) + 8 * v10++) wasRemovedFromDocumentRoot:root];
      }

      while (v8 != v10);
      v8 = [allWPStorages countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(TSWPStorage *)[(TSTEditingState *)self->mEditingState editingStorage] wasRemovedFromDocumentRoot:root];
  [(TSTMasterLayout *)self->mMasterLayout wasRemovedFromDocumentRoot];
  v11.receiver = self;
  v11.super_class = TSTTableInfo;
  [(TSDDrawableInfo *)&v11 wasRemovedFromDocumentRoot:root];
}

- (id)childEnumerator
{
  allWPStorages = [(TSTTableInfo *)self allWPStorages];

  return [allWPStorages objectEnumerator];
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(int)alternate reservedCount:(unint64_t)count
{
  v7 = *&alternate;
  stylesheet = [theme stylesheet];
  context = [theme context];
  v12 = 6 - count;
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:6 - count];
  if ([kind isEqual:String])
  {
    kindCopy = kind;
    if (count != 6)
    {
      v13 = 0;
      do
      {
        v14 = -[TSTTableStylePreset initWithStyleNetwork:index:]([TSTTableStylePreset alloc], "initWithStyleNetwork:index:", +[TSTTableStyleNetwork createStylesInStylesheet:presetIndex:colors:alternate:](TSTTableStyleNetwork, "createStylesInStylesheet:presetIndex:colors:alternate:", stylesheet, v13, [theme colors], v7), v13);
        if ([(TSPObject *)v14 context]!= context)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTTableInfo bootstrapPresetsOfKind:inTheme:alternate:reservedCount:]"];
          [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 1252, @"expected equality between %s and %s", "p.context", "context"}];
        }

        [v18 addObject:v14];

        ++v13;
      }

      while (v12 != v13);
    }

    [theme setPresets:v18 ofKind:kindCopy];
  }
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  [(TSTTableModel *)[(TSTTableInfo *)self tableModel] adoptStylesheet:stylesheet withMapper:mapper];
  editingState = [(TSTTableInfo *)self editingState];

  [(TSTEditingState *)editingState adoptStylesheet:stylesheet withMapper:mapper];
}

- (id)referencedStyles
{
  tableModel = [(TSTTableInfo *)self tableModel];
  v3 = [TSTTableStyleNetwork networkFromTableModel:tableModel];
  v4 = [MEMORY[0x277CBEB58] setWithArray:{objc_msgSend(v3, "styleArray")}];
  v5 = [[TSTCellIterator alloc] initWithTableModel:tableModel flags:352];
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

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [+[TSTTableStyleNetwork networkFromTableModel:](TSTTableStyleNetwork networkFromTableModel:{-[TSTTableInfo tableModel](self, "tableModel")), "styleArray"}];
  array = [MEMORY[0x277CBEB18] array];
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
        v13 = (*(block + 2))(block, v12);
        v9 |= v13 != v12;
        [array addObject:v13];
      }

      v8 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
    if (v9)
    {
      v5 = [TSTTableStyleNetwork alloc];
      v14 = [v5 initWithContext:-[TSPObject context](self fromArray:"context") presetIndex:{array, -[TSTTableModel presetIndex](-[TSTTableInfo tableModel](self, "tableModel"), "presetIndex")}];
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
        (*(block + 2))(block, v18);
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
        (*(block + 2))(block, v23);
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
  range = [(TSTTableModel *)[(TSTTableInfo *)self tableModel] range];
  if ([(TSTEditingState *)[(TSTTableInfo *)self editingState] selection])
  {
    boundingCellRange = [(TSTCellRegion *)[(TSTTableSelection *)[(TSTEditingState *)[(TSTTableInfo *)self editingState] selection] cellRegion] boundingCellRange];
  }

  else
  {
    boundingCellRange = 0;
  }

  v5 = CFUUIDCreateString(*MEMORY[0x277CBECE8], [(TSTTableModel *)[(TSTTableInfo *)self tableModel] tableID]);
  v6 = v5;
  v10[0] = v5;
  v9[0] = kTSTDescriptionSourceTableID;
  v9[1] = kTSTDescriptionSourceRange;
  v8 = range;
  v10[1] = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:8];
  v9[2] = kTSTDescriptionSourceOrigin;
  v8.var0 = boundingCellRange;
  v10[2] = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:4];
  v9[3] = kTSTDescriptionSourceNumHeaderRows;
  v10[3] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[TSTTableModel numberOfHeaderRows](-[TSTTableInfo tableModel](self, "tableModel"), "numberOfHeaderRows")}];
  v9[4] = kTSTDescriptionSourceNumHeaderColumns;
  v10[4] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[TSTTableModel numberOfHeaderColumns](-[TSTTableInfo tableModel](self, "tableModel"), "numberOfHeaderColumns")}];
  v9[5] = kTSTDescriptionSourceNumFooterRows;
  v10[5] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[TSTTableModel numberOfFooterRows](-[TSTTableInfo tableModel](self, "tableModel"), "numberOfFooterRows")}];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
}

- (id)descriptionForPasteboardWithSource:(id)source
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  descriptionForPasteboard = [(TSTTableInfo *)self descriptionForPasteboard];
  if (v4)
  {
    descriptionForExactCopy = [v4 descriptionForExactCopy];
    descriptionForPasteboard = [MEMORY[0x277CBEB38] dictionaryWithDictionary:descriptionForPasteboard];
    [descriptionForPasteboard addEntriesFromDictionary:descriptionForExactCopy];
  }

  return descriptionForPasteboard;
}

- (void)setEditingCellID:(id)d
{
  if (d.var0 == 0xFFFF || (*&d.var0 & 0xFF0000) == 0xFF0000)
  {
    self->mPreviousEditingCellID = 0xFFFFFF;
  }

  else
  {
    self->mPreviousEditingCellID = self->mEditingCellID;
  }

  self->mEditingCellID = d;
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)editingCellRange
{
  editingCellID = [(TSTTableInfo *)self editingCellID];
  v4 = TSTTableMergeRangeAtCellID([(TSTTableInfo *)self tableModel], *&editingCellID);
  if (v4 == 0xFFFF)
  {
    return (*&editingCellID | 0x1000100000000);
  }

  v5 = (v4 & 0xFF0000) == 0xFF0000 || HIWORD(v4) == 0;
  if (v5 || (v4 & 0xFFFF00000000) == 0)
  {
    return (*&editingCellID | 0x1000100000000);
  }

  return v4;
}

- (void)setFormulaEditing:(BOOL)editing
{
  if (self->mIsFormulaEditing == editing)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableInfo setFormulaEditing:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableInfo.mm"), 1553, @"Calling setFormulaEditing with the same value as existing.  These should be paired up."}];
  }

  self->mIsFormulaEditing = editing;
}

- (void)setHasReference:(BOOL)reference
{
  if (self->mHasReference != reference)
  {
    self->mHasReference = reference;
  }
}

- (void)willCopyWithOtherDrawables:(id)drawables
{
  tableModel = [(TSTTableInfo *)self tableModel];

  [(TSTTableModel *)tableModel setDrawableIsBeingCopied:1];
}

- (void)didCopy
{
  tableModel = [(TSTTableInfo *)self tableModel];

  [(TSTTableModel *)tableModel setDrawableIsBeingCopied:0];
}

- (id)allWPStorages
{
  tableModel = [(TSTTableInfo *)self tableModel];

  return [(TSTTableModel *)tableModel allRichTextPayloadStorages];
}

- (void)didReplaceTextsInStoragesWithPlaceHolderString
{
  [(TSUConcurrentCache *)[(TSTMasterLayout *)self->mMasterLayout dupContentCache] removeAllObjects];
  cellIDToWPColumnCache = [(TSTMasterLayout *)self->mMasterLayout cellIDToWPColumnCache];

  [(TSUConcurrentCache *)cellIDToWPColumnCache removeAllObjects];
}

- (void)performBlockWithStylesheetForAddingStyles:(id)styles
{
  documentRoot = [(TSTTableInfo *)self documentRoot];
  stylesheet = [(TSKDocumentRoot *)documentRoot stylesheet];
  stylesheet2 = [(TSSTheme *)[(TSKDocumentRoot *)documentRoot theme] stylesheet];
  if ([(TSDDrawableInfo *)self isThemeContent])
  {
    if ([(TSSStylesheet *)stylesheet2 isLocked])
    {
      [(TSSStylesheet *)stylesheet2 setIsLocked:0];
      (*(styles + 2))(styles, stylesheet2);

      [(TSSStylesheet *)stylesheet2 setIsLocked:1];
      return;
    }
  }

  else
  {
    stylesheet2 = stylesheet;
  }

  v8 = *(styles + 2);

  v8(styles, stylesheet2);
}

@end