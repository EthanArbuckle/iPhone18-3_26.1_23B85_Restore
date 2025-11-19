@interface PXDuplicatesSectionHeaderLayoutProvider
- (id)actionTextForActionType:(int64_t)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5;
- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
- (int64_t)actionTypeForHeaderLayout:(id)a3;
- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5;
@end

@implementation PXDuplicatesSectionHeaderLayoutProvider

- (int64_t)actionTypeForHeaderLayout:(id)a3
{
  v4 = a3;
  if ([v4 isInSelectMode])
  {
    v7.receiver = self;
    v7.super_class = PXDuplicatesSectionHeaderLayoutProvider;
    v5 = [(PXActionableSectionHeaderLayoutProvider *)&v7 actionTypeForHeaderLayout:v4];
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5
{
  if (a4 == 3)
  {
    v7 = a5;
    v8 = a3;
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.deduplicationFromAlbumSection" withPayload:MEMORY[0x1E695E0F8]];
    [(PXActionableSectionHeaderLayoutProvider *)self setSelectedState:1 forItemsInSectionHeaderLayout:v8];
    v9 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    v10 = [v9 assetActionManager];
    v14 = [v10 actionPerformerForActionType:*off_1E7721AF8];

    [v14 setSender:v7];
    [v14 performActionWithCompletionHandler:0];
    [(PXActionableSectionHeaderLayoutProvider *)self setSelectedState:0 forItemsInSectionHeaderLayout:v8];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PXDuplicatesSectionHeaderLayoutProvider;
    v12 = a5;
    v13 = a3;
    [(PXActionableSectionHeaderLayoutProvider *)&v15 sectionHeader:v13 didPressButtonForActionType:a4 sender:v12];
  }
}

- (id)actionTextForActionType:(int64_t)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5
{
  if (a3 == 3)
  {
    v5 = PXLocalizedStringFromTable(@"MERGE_DUPLICATES_SECTION_ACTION", @"PhotosUICore");
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXDuplicatesSectionHeaderLayoutProvider;
    v6 = *&a5->item;
    v8[0] = *&a5->dataSourceIdentifier;
    v8[1] = v6;
    v5 = [(PXActionableSectionHeaderLayoutProvider *)&v9 actionTextForActionType:a3 dataSource:a4 sectionIndexPath:v8];
  }

  return v5;
}

- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = *&a4->item;
  v11 = *&a4->dataSourceIdentifier;
  v12 = v5;
  v6 = a3;
  v7 = [v6 assetCollectionAtSectionIndexPath:&v11];
  v8 = [v6 numberOfItemsInSection:{a4->section, v11, v12}];

  v9 = PXDeduplicationLocalizedGroupTitle(v7, v8);

  return v9;
}

@end