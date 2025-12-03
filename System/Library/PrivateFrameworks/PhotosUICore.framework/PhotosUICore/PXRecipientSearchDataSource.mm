@interface PXRecipientSearchDataSource
- (id)recipientSearchResultAtIndexPath:(id)path;
- (id)recipientSearchResultAtSimpleIndexPath:(PXSimpleIndexPath *)path;
- (id)recipientSearchResultsInSection:(unint64_t)section;
@end

@implementation PXRecipientSearchDataSource

- (id)recipientSearchResultAtSimpleIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXRecipientSearchDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (id)recipientSearchResultAtIndexPath:(id)path
{
  v6 = 0u;
  v7 = 0u;
  pathCopy = path;
  [(PXRecipientSearchDataSource *)self identifier];
  PXSimpleIndexPathFromIndexPath();
}

- (id)recipientSearchResultsInSection:(unint64_t)section
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:section];
  v7 = [off_1E7721768 indexPathSetWithSectionIndexes:v6 dataSourceIdentifier:{-[PXRecipientSearchDataSource identifier](self, "identifier")}];

  v8 = [(PXRecipientSearchDataSource *)self itemIndexPathsForSections:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PXRecipientSearchDataSource_recipientSearchResultsInSection___block_invoke;
  v13[3] = &unk_1E7744508;
  v13[4] = self;
  v9 = v5;
  v14 = v9;
  [v8 enumerateAllIndexPathsUsingBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

void __63__PXRecipientSearchDataSource_recipientSearchResultsInSection___block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 recipientSearchResultAtSimpleIndexPath:v6];
  [*(a1 + 40) addObject:v5];
}

@end