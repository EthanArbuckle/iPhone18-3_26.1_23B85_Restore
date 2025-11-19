@interface SBXXGetHomeScreenIconMetrics
@end

@implementation SBXXGetHomeScreenIconMetrics

void ___SBXXGetHomeScreenIconMetrics_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 _referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  **(a1 + 32) = CGRectGetWidth(v24);
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  **(a1 + 40) = CGRectGetHeight(v25);
  v22 = serverIconController();
  v11 = [v22 iconManager];
  v12 = [v11 listLayoutProvider];
  v13 = [v12 layoutForIconLocation:*MEMORY[0x277D666D0]];
  [v13 iconImageInfo];
  v14 = *(a1 + 56);
  **(a1 + 48) = v15;
  *v14 = v16;
  v17 = [v22 iconModel];
  **(a1 + 64) = [v17 maxRowCountForListInRootFolderWithInterfaceOrientation:1];
  **(a1 + 72) = [v17 maxColumnCountForListInRootFolderWithInterfaceOrientation:1];
  **(a1 + 80) = [v17 maxIconCountForDock];
  v18 = [v17 maxListCountForFolders];
  **(a1 + 88) = v18;
  v19 = [v12 layoutForIconLocation:*MEMORY[0x277D66698]];
  **(a1 + 96) = [v19 numberOfRowsForOrientation:1];
  v20 = [v19 numberOfColumnsForOrientation:1];
  v21 = *(a1 + 112);
  **(a1 + 104) = v20;
  *v21 = v18;
}

@end