@interface TSTTableDataStore
- (TSTTableDataStore)initWithOwner:(id)a3;
- (void)dealloc;
- (void)validate;
@end

@implementation TSTTableDataStore

- (TSTTableDataStore)initWithOwner:(id)a3
{
  v10.receiver = self;
  v10.super_class = TSTTableDataStore;
  v4 = [(TSPContainedObject *)&v10 initWithOwner:?];
  if (v4)
  {
    v5 = [a3 context];
    v4->mStorageVersion = 3;
    v4->mNextRowStripID = 0;
    v4->mNextColumnStripID = 0;
    v4->mCellCount = 0;
    v4->mCellCountValid = 1;
    v4->mTileStorage = [[TSTTileIDKeyDict alloc] initWithOwner:a3];
    v4->mRowHeaderStorage = [[TSTTableHeaderStorage alloc] initWithOwner:a3];
    v4->mColumnHeaderStorageReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableHeaderStorageBucket alloc] initWithContext:v5]];
    v4->mRowTileIndex = 0;
    v4->mColumnTileIndex = 0;
    v6 = [[TSTTableTile alloc] initWithContext:v5];
    mNextRowStripID = v4->mNextRowStripID;
    v4->mNextRowStripID = mNextRowStripID + 1;
    [(TSTTileIDKeyDict *)v4->mTileStorage setTile:v6 forID:mNextRowStripID];
    v8 = TSTTableRBTreeNewNode(0, mNextRowStripID);
    v4->mRowTileIndex = TSTTableRBTreeInsert(v4->mRowTileIndex, v8);
    v4->mStringTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:1 context:v5]];
    v4->mStyleTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:4 context:v5]];
    v4->mConditionalStyleSetTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:9 context:v5]];
    v4->mFormatTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:2 context:v5]];
    v4->mFormulaTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:3 context:v5]];
    v4->mFormulaErrorTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:5 context:v5]];
    v4->mRichTextPayloadTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:8 context:v5]];
    v4->mCommentStorageTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:10 context:v5]];
    v4->mMultipleChoiceListFormatTableReference = [[TSPLazyReference alloc] initWithTSPObject:[[TSTTableDataList alloc] initWithType:7 context:v5]];
    v4->mPasteboardCustomFormatList = 0;
    v4->mMergedCellRanges = 0;
    v4->mDrawableIsBeingCopied = 0;
  }

  return v4;
}

- (void)dealloc
{
  self->mTileStorage = 0;

  self->mRowHeaderStorage = 0;
  self->mColumnHeaderStorageReference = 0;

  self->mStringTableReference = 0;
  self->mStyleTableReference = 0;

  self->mFormatTableReference = 0;
  self->mFormulaTableReference = 0;

  self->mRichTextPayloadTableReference = 0;
  self->mCommentStorageTableReference = 0;

  self->mMultipleChoiceListFormatTableReference = 0;
  self->mPasteboardCustomFormatList = 0;

  self->mMergedCellRanges = 0;
  self->mFormulaErrorTableReference = 0;

  self->mConditionalStyleSetTableReference = 0;
  TSTTableRBTreeFree(self->mRowTileIndex);
  TSTTableRBTreeFree(self->mColumnTileIndex);
  v3.receiver = self;
  v3.super_class = TSTTableDataStore;
  [(TSTTableDataStore *)&v3 dealloc];
}

- (void)validate
{
  [(TSTTileIDKeyDict *)self->mTileStorage applyFunction:privateValidateTile withState:0];
  TSTTableRBTreeValidate(self->mRowTileIndex);
  mRowTileIndex = self->mRowTileIndex;

  TSTTableRBTreeApply(mRowTileIndex, p_validateTileCB, self);
}

@end