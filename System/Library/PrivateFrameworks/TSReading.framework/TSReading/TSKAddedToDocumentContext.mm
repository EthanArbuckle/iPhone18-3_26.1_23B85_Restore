@interface TSKAddedToDocumentContext
+ (id)changeTrackingSubstorageForCopyContext;
+ (id)dragCopyContext;
+ (id)dragMoveContext;
+ (id)exportFootnoteContext;
+ (id)importingContextWithImporterID:(id)d;
+ (id)importingMasterTemplateContextWithImporterID:(id)d;
+ (id)insertingPrototypeContext;
+ (id)movingContext;
+ (id)pastingContext;
+ (id)pastingMatchStyleContext;
+ (id)unarchivingContext;
+ (id)undoDeleteContext;
+ (id)unhidingContext;
- (void)setTableIDMap:(__CFDictionary *)map;
@end

@implementation TSKAddedToDocumentContext

+ (id)unarchivingContext
{
  {
    +[TSKAddedToDocumentContext unarchivingContext]::sUnarchivingContext = objc_alloc_init(TSKAddedToDocumentContext_Unarchiving);
  }

  return +[TSKAddedToDocumentContext unarchivingContext]::sUnarchivingContext;
}

+ (id)importingContextWithImporterID:(id)d
{
  v3 = [[TSKAddedToDocumentContext_Importing alloc] initWithImporterID:d];

  return v3;
}

+ (id)importingMasterTemplateContextWithImporterID:(id)d
{
  v3 = [[TSKAddedToDocumentContext_ImportingMasterTemplate alloc] initWithImporterID:d];

  return v3;
}

+ (id)pastingContext
{
  v2 = objc_alloc_init(TSKAddedToDocumentContext_Pasting);

  return v2;
}

+ (id)pastingMatchStyleContext
{
  {
    +[TSKAddedToDocumentContext pastingMatchStyleContext]::sPastingMatchStyleContext = objc_alloc_init(TSKAddedToDocumentContext_PastingMatchStyle);
  }

  return +[TSKAddedToDocumentContext pastingMatchStyleContext]::sPastingMatchStyleContext;
}

+ (id)dragMoveContext
{
  {
    +[TSKAddedToDocumentContext dragMoveContext]::sPastingContext = objc_alloc_init(TSKAddedToDocumentContext_DragMove);
  }

  return +[TSKAddedToDocumentContext dragMoveContext]::sPastingContext;
}

+ (id)dragCopyContext
{
  {
    +[TSKAddedToDocumentContext dragCopyContext]::sPastingContext = objc_alloc_init(TSKAddedToDocumentContext_DragCopy);
  }

  return +[TSKAddedToDocumentContext dragCopyContext]::sPastingContext;
}

+ (id)insertingPrototypeContext
{
  {
    +[TSKAddedToDocumentContext insertingPrototypeContext]::sInsertingPrototypeContext = objc_alloc_init(TSKAddedToDocumentContext_InsertingPrototype);
  }

  return +[TSKAddedToDocumentContext insertingPrototypeContext]::sInsertingPrototypeContext;
}

+ (id)movingContext
{
  {
    +[TSKAddedToDocumentContext movingContext]::sMovingContext = objc_alloc_init(TSKAddedToDocumentContext_Moving);
  }

  return +[TSKAddedToDocumentContext movingContext]::sMovingContext;
}

+ (id)unhidingContext
{
  {
    +[TSKAddedToDocumentContext unhidingContext]::sUnhidingContext = objc_alloc_init(TSKAddedToDocumentContext_Unhiding);
  }

  return +[TSKAddedToDocumentContext unhidingContext]::sUnhidingContext;
}

+ (id)undoDeleteContext
{
  {
    +[TSKAddedToDocumentContext undoDeleteContext]::sUndoDeleteContext = objc_alloc_init(TSKAddedToDocumentContext_UndoDelete);
  }

  return +[TSKAddedToDocumentContext undoDeleteContext]::sUndoDeleteContext;
}

+ (id)exportFootnoteContext
{
  {
    +[TSKAddedToDocumentContext exportFootnoteContext]::sExportFootnoteContext = objc_alloc_init(TSKAddedToDocumentContext_ExportFootnotes);
  }

  return +[TSKAddedToDocumentContext exportFootnoteContext]::sExportFootnoteContext;
}

+ (id)changeTrackingSubstorageForCopyContext
{
  {
    +[TSKAddedToDocumentContext changeTrackingSubstorageForCopyContext]::sChangeTrackingSubstorageContext = objc_alloc_init(TSKAddedToDocumentContext_SubstorageForChangeTrackingCopy);
  }

  return +[TSKAddedToDocumentContext changeTrackingSubstorageForCopyContext]::sChangeTrackingSubstorageContext;
}

- (void)setTableIDMap:(__CFDictionary *)map
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKAddedToDocumentContext setTableIDMap:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentObjectProtocol.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:721 description:@"Only the pasting context accepts a table ID map."];
}

@end