@interface PXDuplicatesSectionHeaderLayoutProvider
- (id)actionTextForActionType:(int64_t)type dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)actionTypeForHeaderLayout:(id)layout;
- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender;
@end

@implementation PXDuplicatesSectionHeaderLayoutProvider

- (int64_t)actionTypeForHeaderLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isInSelectMode])
  {
    v7.receiver = self;
    v7.super_class = PXDuplicatesSectionHeaderLayoutProvider;
    v5 = [(PXActionableSectionHeaderLayoutProvider *)&v7 actionTypeForHeaderLayout:layoutCopy];
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender
{
  if (type == 3)
  {
    senderCopy = sender;
    headerCopy = header;
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.deduplicationFromAlbumSection" withPayload:MEMORY[0x1E695E0F8]];
    [(PXActionableSectionHeaderLayoutProvider *)self setSelectedState:1 forItemsInSectionHeaderLayout:headerCopy];
    viewModel = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    assetActionManager = [viewModel assetActionManager];
    v14 = [assetActionManager actionPerformerForActionType:*off_1E7721AF8];

    [v14 setSender:senderCopy];
    [v14 performActionWithCompletionHandler:0];
    [(PXActionableSectionHeaderLayoutProvider *)self setSelectedState:0 forItemsInSectionHeaderLayout:headerCopy];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PXDuplicatesSectionHeaderLayoutProvider;
    senderCopy2 = sender;
    headerCopy2 = header;
    [(PXActionableSectionHeaderLayoutProvider *)&v15 sectionHeader:headerCopy2 didPressButtonForActionType:type sender:senderCopy2];
  }
}

- (id)actionTextForActionType:(int64_t)type dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  if (type == 3)
  {
    v5 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_SECTION_ACTION", @"PhotosUICore");
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXDuplicatesSectionHeaderLayoutProvider;
    v6 = *&path->item;
    v8[0] = *&path->dataSourceIdentifier;
    v8[1] = v6;
    v5 = [(PXActionableSectionHeaderLayoutProvider *)&v9 actionTextForActionType:type dataSource:source sectionIndexPath:v8];
  }

  return v5;
}

- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v11 = *&path->dataSourceIdentifier;
  v12 = v5;
  sourceCopy = source;
  v7 = [sourceCopy assetCollectionAtSectionIndexPath:&v11];
  v8 = [sourceCopy numberOfItemsInSection:{path->section, v11, v12}];

  v9 = PXDeduplicationLocalizedGroupTitle(v7, v8);

  return v9;
}

@end