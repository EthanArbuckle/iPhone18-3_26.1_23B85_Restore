@interface TSTEditingState
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)editingCellRange;
- (BOOL)p_shouldSetCellPostFlight;
- (TSTEditingState)initWithTableInfo:(id)info;
- (id)initForPasteboardFromSourceInfo:(id)info stylesheet:(id)stylesheet;
- (id)storageForCellID:(id)d;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)changeEditingMode:(int)mode;
- (void)dealloc;
- (void)p_performRichTextStorageDOLC:(id)c newStorage:(id)storage;
- (void)p_registerStorageObserver;
- (void)setEditingCell:(id)cell;
- (void)setEditingStorage:(id)storage;
- (void)setSearchReference:(id)reference;
- (void)setTableInfo:(id)info;
@end

@implementation TSTEditingState

- (TSTEditingState)initWithTableInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = TSTEditingState;
  result = -[TSPObject initWithContext:](&v5, sel_initWithContext_, [info context]);
  if (result)
  {
    result->mTableInfo = info;
    result->mEditingMode = 0;
    result->mSelection = 0;
    result->mSelectionReflectingEditingState = 0;
    result->mColoredReferences = 0;
    result->mEditingCellID = 0xFFFFFF;
    result->mCellWasEditedInCurrentSession = 0;
  }

  return result;
}

- (void)setSearchReference:(id)reference
{
  mSearchReference = self->mSearchReference;
  if (mSearchReference != reference)
  {

    self->mSearchReference = reference;
  }
}

- (id)initForPasteboardFromSourceInfo:(id)info stylesheet:(id)stylesheet
{
  v5 = [(TSTEditingState *)self initWithTableInfo:info];
  if (v5)
  {
    v5->mEditingStorage = -[TSWPStorage initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:]([TSWPStorage alloc], "initWithContext:string:kind:stylesheet:paragraphStyle:listStyle:section:columnStyle:", -[TSPObject context](v5, "context"), &stru_287D36338, 5, stylesheet, -[TSTTableModel bodyTextStyle](-[TSTEditingState tableModel](v5, "tableModel"), "bodyTextStyle"), [stylesheet defaultListStyle], 0, 0);
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

- (void)p_performRichTextStorageDOLC:(id)c newStorage:(id)storage
{
  documentRoot = [(TSTTableInfo *)[(TSTEditingState *)self tableInfo] documentRoot];
  if ([storage documentRoot])
  {
    if (documentRoot != [storage documentRoot])
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTEditingState p_performRichTextStorageDOLC:newStorage:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTEditingState.mm"), 223, @"expected equality between %s and %s", "documentRoot", "newStorage.documentRoot"}];
    }
  }

  else if (storage && storage != c)
  {
    [storage willBeAddedToDocumentRoot:documentRoot dolcContext:0];
    [storage wasAddedToDocumentRoot:documentRoot dolcContext:0];
  }

  if (c && storage != c && [c documentRoot])
  {
    if (documentRoot != [c documentRoot])
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTEditingState p_performRichTextStorageDOLC:newStorage:]"];
      [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTEditingState.mm"), 231, @"expected equality between %s and %s", "documentRoot", "oldStorage.documentRoot"}];
    }

    [c willBeRemovedFromDocumentRoot:documentRoot];

    [c wasRemovedFromDocumentRoot:documentRoot];
  }
}

- (void)setEditingStorage:(id)storage
{
  if (self->mEditingStorage != storage)
  {
    [(TSPObject *)self willModify];
    [(TSTEditingState *)self p_unregisterStorageObserver];
    [(TSTEditingState *)self p_performRichTextStorageDOLC:self->mEditingStorage newStorage:storage];
    [(TSWPStorage *)self->mEditingStorage removeObserver:self->mTracker];

    self->mEditingStorage = storage;
    [(TSWPStorage *)self->mEditingStorage setParentInfo:[(TSTEditingState *)self tableInfo]];
    [(TSWPStorage *)self->mEditingStorage addObserver:self->mTracker];

    [(TSTEditingState *)self p_registerStorageObserver];
  }
}

- (void)setTableInfo:(id)info
{
  self->mTableInfo = info;
  mEditingStorage = self->mEditingStorage;
  if (mEditingStorage)
  {
    [(TSWPStorage *)mEditingStorage setParentInfo:?];
  }
}

- (void)setEditingCell:(id)cell
{
  mEditingCell = self->mEditingCell;
  if (mEditingCell != cell && cell | mEditingCell)
  {
    [(TSPObject *)self willModify];
    v6 = [cell copy];
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
  editingCellID = [(TSTEditingState *)self editingCellID];
  v4 = TSTTableMergeRangeAtCellID([(TSTEditingState *)self tableModel], *&editingCellID);
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

- (id)storageForCellID:(id)d
{
  v5 = objc_alloc_init(TSTCell);
  dCopy = d;
  if (TSTCellAtCellID([(TSTEditingState *)self tableModel], *&d, v5))
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7 || *(&v5->mPrivate + 1) << 8 != 2304)
  {
    isThemeContent = [(TSDDrawableInfo *)[(TSTEditingState *)self tableInfo] isThemeContent];
    documentRoot = [(TSTTableInfo *)[(TSTEditingState *)self tableInfo] documentRoot];
    if (isThemeContent)
    {
      documentRoot = [(TSKDocumentRoot *)documentRoot theme];
    }

    stylesheet = [(TSKDocumentRoot *)documentRoot stylesheet];
    TextStyleAtCellID = TSTTableGetTextStyleAtCellID([(TSTEditingState *)self tableModel], dCopy, 0);
    if (v5)
    {
      v13 = *(&v5->mPrivate + 1);
      v14 = v13 > 7;
      v15 = (1 << v13) & 0xA4;
      if (!v14 && v15 != 0)
      {
        v17 = [(TSTMasterLayout *)[(TSTTableInfo *)[(TSTEditingState *)self tableInfo] masterLayout] accountingParagraphStylePropertyMapForCell:v5 atCellID:dCopy];
        if (v17)
        {
          TextStyleAtCellID = [(TSSStylesheet *)stylesheet variationOfStyle:TextStyleAtCellID propertyMap:v17];
        }
      }
    }

    v18 = [(TSSStyle *)TextStyleAtCellID intValueForProperty:44];
    if (v18 == -1)
    {
      v18 = [(TSSStyle *)[(TSTTableModel *)[(TSTEditingState *)self tableModel] tableStyle] intValueForProperty:798]== 1;
    }

    LODWORD(v21) = v18;
    v8 = [[TSWPStorage alloc] initWithContext:[(TSPObject *)self context] string:NSStringForEditingWithTSTCell(v5) kind:5 stylesheet:stylesheet paragraphStyle:TextStyleAtCellID listStyle:[(TSSStylesheet *)stylesheet defaultListStyle] section:0 columnStyle:0 paragraphDirection:v21];
  }

  else
  {
    v8 = [(TSWPStorage *)[(TSTRichTextPayload *)v5->mPrivate.mRichTextPayload storage] copyWithContext:[(TSPObject *)self context]];
  }

  v19 = v8;

  return v19;
}

- (void)changeEditingMode:(int)mode
{
  mEditingMode = self->mEditingMode;
  if (mEditingMode != mode)
  {
    self->mPreviousEditingMode = mEditingMode;
    self->mEditingMode = mode;

    self->mSelectionReflectingEditingState = 0;
    if (mode != 6)
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

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  editingStorage = [(TSTEditingState *)self editingStorage];

  [(TSWPStorage *)editingStorage adoptStylesheet:stylesheet withMapper:mapper];
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