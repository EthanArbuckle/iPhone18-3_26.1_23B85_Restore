@interface TSTEditingState
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)editingCellRange;
- (BOOL)p_shouldSetCellPostFlight;
- (TSTEditingState)initWithTableInfo:(id)a3;
- (id)initForPasteboardFromSourceInfo:(id)a3 stylesheet:(id)a4;
- (id)storageForCellID:(id)a3;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)changeEditingMode:(int)a3;
- (void)dealloc;
- (void)p_performRichTextStorageDOLC:(id)a3 newStorage:(id)a4;
- (void)p_registerStorageObserver;
- (void)setEditingCell:(id)a3;
- (void)setEditingStorage:(id)a3;
- (void)setSearchReference:(id)a3;
- (void)setTableInfo:(id)a3;
@end

@implementation TSTEditingState

- (TSTEditingState)initWithTableInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSTEditingState;
  result = -[TSPObject initWithContext:](&v5, sel_initWithContext_, [a3 context]);
  if (result)
  {
    result->mTableInfo = a3;
    result->mEditingMode = 0;
    result->mSelection = 0;
    result->mSelectionReflectingEditingState = 0;
    result->mColoredReferences = 0;
    result->mEditingCellID = 0xFFFFFF;
    result->mCellWasEditedInCurrentSession = 0;
  }

  return result;
}

- (void)setSearchReference:(id)a3
{
  mSearchReference = self->mSearchReference;
  if (mSearchReference != a3)
  {

    self->mSearchReference = a3;
  }
}

- (id)initForPasteboardFromSourceInfo:(id)a3 stylesheet:(id)a4
{
  v5 = [(TSTEditingState *)self initWithTableInfo:a3];
  if (v5)
  {
    v5->mEditingStorage = -[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:]([TSWPStorage alloc], "initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:", -[TSPObject context](v5, "context"), &stru_287D36338, 5, a4, -[TSTTableModel bodyTextStyle](-[TSTEditingState tableModel](v5, "tableModel"), "bodyTextStyle"), [a4 defaultListStyle], 0, 0);
  }

  return v5;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->mEditingCell = 0;
  [(TSTEditingState *)self p_unregisterStorageObserver];
  [(TSWPStorage *)self->mEditingStorage removeObserver:self->mTracker];
  self->mTracker = 0;

  self->mEditingStorage = 0;
  self->mSelection = 0;

  self->mSelectionReflectingEditingState = 0;
  mColoredReferences = self->mColoredReferences;
  if (mColoredReferences)
  {

    self->mColoredReferences = 0;
  }

  v4.receiver = self;
  v4.super_class = TSTEditingState;
  [(TSTEditingState *)&v4 dealloc];
}

- (void)p_performRichTextStorageDOLC:(id)a3 newStorage:(id)a4
{
  v6 = [(TSTTableInfo *)[(TSTEditingState *)self tableInfo] documentRoot];
  if ([a4 documentRoot])
  {
    if (v6 != [a4 documentRoot])
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTEditingState p_performRichTextStorageDOLC:newStorage:]"];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTEditingState.mm"), 223, @"expected equality between %s and %s", "documentRoot", "newStorage.documentRoot"}];
    }
  }

  else if (a4 && a4 != a3)
  {
    [a4 willBeAddedToDocumentRoot:v6 dolcContext:0];
    [a4 wasAddedToDocumentRoot:v6 dolcContext:0];
  }

  if (a3 && a4 != a3 && [a3 documentRoot])
  {
    if (v6 != [a3 documentRoot])
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTEditingState p_performRichTextStorageDOLC:newStorage:]"];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTEditingState.mm"), 231, @"expected equality between %s and %s", "documentRoot", "oldStorage.documentRoot"}];
    }

    [a3 willBeRemovedFromDocumentRoot:v6];

    [a3 wasRemovedFromDocumentRoot:v6];
  }
}

- (void)setEditingStorage:(id)a3
{
  if (self->mEditingStorage != a3)
  {
    [(TSPObject *)self willModify];
    [(TSTEditingState *)self p_unregisterStorageObserver];
    [(TSTEditingState *)self p_performRichTextStorageDOLC:self->mEditingStorage newStorage:a3];
    [(TSWPStorage *)self->mEditingStorage removeObserver:self->mTracker];

    self->mEditingStorage = a3;
    [(TSWPStorage *)self->mEditingStorage setParentInfo:[(TSTEditingState *)self tableInfo]];
    [(TSWPStorage *)self->mEditingStorage addObserver:self->mTracker];

    [(TSTEditingState *)self p_registerStorageObserver];
  }
}

- (void)setTableInfo:(id)a3
{
  self->mTableInfo = a3;
  mEditingStorage = self->mEditingStorage;
  if (mEditingStorage)
  {
    [(TSWPStorage *)mEditingStorage setParentInfo:?];
  }
}

- (void)setEditingCell:(id)a3
{
  mEditingCell = self->mEditingCell;
  if (mEditingCell != a3 && a3 | mEditingCell)
  {
    [(TSPObject *)self willModify];
    v6 = [a3 copy];
    v7 = v6;
    if (v6)
    {
      mCommentStorage = v6->mPrivate.mCommentStorage;
      if (mCommentStorage)
      {
        TSTCellSetCommentStorageClearingID(v6, [(TSDCommentStorage *)mCommentStorage copyWithContext:[(TSPObject *)self context]], 1);
      }
    }

    self->mEditingCell = v7;
  }
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)editingCellRange
{
  v3 = [(TSTEditingState *)self editingCellID];
  v4 = TSTTableMergeRangeAtCellID([(TSTEditingState *)self tableModel], *&v3);
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

- (id)storageForCellID:(id)a3
{
  v5 = objc_alloc_init(TSTCell);
  v6 = a3;
  if (TSTCellAtCellID([(TSTEditingState *)self tableModel], *&a3, v5))
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7 || *(&v5->mPrivate + 1) << 8 != 2304)
  {
    v9 = [(TSDDrawableInfo *)[(TSTEditingState *)self tableInfo] isThemeContent];
    v10 = [(TSTTableInfo *)[(TSTEditingState *)self tableInfo] documentRoot];
    if (v9)
    {
      v10 = [(TSKDocumentRoot *)v10 theme];
    }

    v11 = [(TSKDocumentRoot *)v10 stylesheet];
    TextStyleAtCellID = TSTTableGetTextStyleAtCellID([(TSTEditingState *)self tableModel], v6, 0);
    if (v5)
    {
      v13 = *(&v5->mPrivate + 1);
      v14 = v13 > 7;
      v15 = (1 << v13) & 0xA4;
      if (!v14 && v15 != 0)
      {
        v17 = [(TSTMasterLayout *)[(TSTTableInfo *)[(TSTEditingState *)self tableInfo] masterLayout] accountingParagraphStylePropertyMapForCell:v5 atCellID:v6];
        if (v17)
        {
          TextStyleAtCellID = [(TSSStylesheet *)v11 variationOfStyle:TextStyleAtCellID propertyMap:v17];
        }
      }
    }

    v18 = [(TSSStyle *)TextStyleAtCellID intValueForProperty:44];
    if (v18 == -1)
    {
      v18 = [(TSSStyle *)[(TSTTableModel *)[(TSTEditingState *)self tableModel] tableStyle] intValueForProperty:798]== 1;
    }

    LODWORD(v21) = v18;
    v8 = [[TSWPStorage alloc] initWithContext:[(TSPObject *)self context] string:NSStringForEditingWithTSTCell(v5) kind:5 stylesheet:v11 paragraphStyle:TextStyleAtCellID listStyle:[(TSSStylesheet *)v11 defaultListStyle] section:0 columnStyle:0 paragraphDirection:v21];
  }

  else
  {
    v8 = [(TSWPStorage *)[(TSTRichTextPayload *)v5->mPrivate.mRichTextPayload storage] copyWithContext:[(TSPObject *)self context]];
  }

  v19 = v8;

  return v19;
}

- (void)changeEditingMode:(int)a3
{
  mEditingMode = self->mEditingMode;
  if (mEditingMode != a3)
  {
    self->mPreviousEditingMode = mEditingMode;
    self->mEditingMode = a3;

    self->mSelectionReflectingEditingState = 0;
    if (a3 != 6)
    {
      self->mEditingCellInProxy = 0;
    }
  }
}

- (void)p_registerStorageObserver
{
  if ([+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")])
  {
    mEditingStorage = self->mEditingStorage;

    [(TSWPStorage *)mEditingStorage addObserver:self];
  }
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = [(TSTEditingState *)self editingStorage];

  [(TSWPStorage *)v6 adoptStylesheet:a3 withMapper:a4];
}

- (BOOL)p_shouldSetCellPostFlight
{
  if (([(TSKCommandController *)[(TSTEditingState *)self commandController] isUndoing]& 1) != 0 || ([(TSKCommandController *)[(TSTEditingState *)self commandController] isRedoing]& 1) != 0)
  {
    return 0;
  }

  return [(TSTEditingState *)self cellWasEditedInCurrentSession];
}

@end